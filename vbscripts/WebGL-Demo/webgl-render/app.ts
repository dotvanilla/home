namespace webgl {

    /*
     * Naive iteration count optimization
     */
    const maxIterations = 64;

    export interface CanvasFrameAction {
        (width: number, height: number): void;
    }

    /**
     * A typescript rewrite of https://github.com/guybedford/wasm-demo/blob/master/lib/render.js
    */
    export class render {

        gl: WebGLRenderingContext;
        /**
         * Program and shaders
        */
        program: WebGLProgram;
        /**
         * Viewport
        */
        u_resolutionLoc: WebGLUniformLocation;

        displayWidth: number
        displayHeight: number;

        iterations: number = 1;
        lastDrawTime: number;
        iterationConvergence: number = 0;
        convergedIterations: number = 0;

        /**
         * initRender
         * 
         * @param init call generation function
        */
        public constructor(
            private canvas: HTMLCanvasElement,
            private timeStep: CanvasFrameAction,
            private init: CanvasFrameAction,
            private circleFloat32Array: ArrayBuffer,
            private circleCount: number) {

            var vm = this;

            this.gl = <WebGLRenderingContext>canvas.getContext('webgl2');
            this.program = this.gl.createProgram();

            render.initDevice(this.gl, this.program);

            this.u_resolutionLoc = this.gl.getUniformLocation(this.program, 'u_resolution');
            this.resize();

            window.addEventListener('resize', vm.resize, false);

            init(this.displayWidth, this.displayHeight);

            /**
             * Bind circle data buffer
            */
            const circleCoordLoc = this.gl.getAttribLocation(this.program, 'circleCoord');

            this.gl.enableVertexAttribArray(circleCoordLoc);
            this.gl.bindBuffer(this.gl.ARRAY_BUFFER, this.gl.createBuffer());
            this.gl.vertexAttribPointer(circleCoordLoc, 3, this.gl.FLOAT, false, 4 * 3, 0);

            this.lastDrawTime = performance.now();            
        }

        public run() {
            requestAnimationFrame(this.draw);
        }

        /**
         * Draw loop
        */
        private draw() {
            let curTime = performance.now();
            let gl = this.gl;

            // optimize iteration count from time since last draw
            this.updateIterationCount(curTime - this.lastDrawTime);

            for (let i = 0; i < this.iterations; i++) {
                this.timeStep(this.displayWidth, this.displayHeight);
            }

            // copy the circle data from array buffer memory to the GPU
            gl.bufferData(gl.ARRAY_BUFFER, this.circleFloat32Array, gl.DYNAMIC_DRAW);
            // draw the circles on the GPU from the data
            gl.drawArrays(gl.POINTS, 0, this.circleCount);

            // start a new animation loop
            this.lastDrawTime = curTime;

            // do next frame
            requestAnimationFrame(this.draw);
        }

        private updateIterationCount(dt) {
            if (dt < 17 && this.iterations < maxIterations / 2) {
                this.iterationConvergence = 0;
                this.iterations *= 2;
            } else if (dt < 20 && this.iterations < maxIterations) {
                this.iterationConvergence = 0;
                this.iterations++;
            } else if (dt > 55 && this.iterations > 1) {
                this.iterationConvergence = 0;
                this.iterations--;
            }

            if (this.iterationConvergence < 10) {
                this.iterationConvergence++;
                if (this.iterationConvergence === 10 && this.convergedIterations !== this.iterations) {
                    this.convergedIterations = this.iterations;
                    console.log(`timeStep of ${this.iterations} iterations/frame, ~${Math.round(1000 / dt)} frames/sec.`);
                }
            }
        }

        private static initDevice(gl: WebGLRenderingContext, program: WebGLProgram) {
            gl.attachShader(program, shaders.compileShader(gl, gl.VERTEX_SHADER, webgl.shaders.VERTEX_SHADER));
            gl.attachShader(program, shaders.compileShader(gl, gl.FRAGMENT_SHADER, webgl.shaders.FRAGMENT_SHADER));
            gl.linkProgram(program);

            if (!gl.getProgramParameter(program, gl.LINK_STATUS)) {
                throw `Unable to link program:  ${gl.getProgramInfoLog(program)}`;;
            }

            gl.useProgram(program);

            /**
             * Blending
            */
            gl.blendFunc(gl.ONE, gl.ONE_MINUS_SRC_ALPHA);
            gl.enable(gl.BLEND);
        }

        public resize() {
            let canvas = this.gl.canvas;

            this.displayWidth = canvas.clientWidth;
            this.displayHeight = canvas.clientHeight;

            if (canvas.width !== this.displayWidth || canvas.height !== this.displayHeight) {
                canvas.width = this.displayWidth;
                canvas.height = this.displayHeight;

                this.gl.viewport(0, 0, this.displayWidth, this.displayHeight);
                // update the resolution global uniform on the GPU
                this.gl.uniform2f(this.u_resolutionLoc, canvas.width, canvas.height);
            }
        }
    }
}

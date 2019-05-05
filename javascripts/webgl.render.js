var webgl;
(function (webgl) {
    /*
     * Naive iteration count optimization
     */
    const maxIterations = 64;
    /**
     * A typescript rewrite of https://github.com/guybedford/wasm-demo/blob/master/lib/render.js
    */
    class render {
        /**
         * initRender
         *
         * @param init call generation function
        */
        constructor(canvas, timeStep, init, circleFloat32Array, circleCount) {
            this.canvas = canvas;
            this.timeStep = timeStep;
            this.init = init;
            this.circleFloat32Array = circleFloat32Array;
            this.circleCount = circleCount;
            this.iterations = 1;
            this.iterationConvergence = 0;
            this.convergedIterations = 0;
            var vm = this;
            this.gl = canvas.getContext('webgl2');
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
            requestAnimationFrame(vm.draw);
        }
        /**
         * Draw loop
        */
        draw() {
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
            requestAnimationFrame(this.draw);
        }
        updateIterationCount(dt) {
            if (dt < 17 && this.iterations < maxIterations / 2) {
                this.iterationConvergence = 0;
                this.iterations *= 2;
            }
            else if (dt < 20 && this.iterations < maxIterations) {
                this.iterationConvergence = 0;
                this.iterations++;
            }
            else if (dt > 55 && this.iterations > 1) {
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
        static initDevice(gl, program) {
            gl.attachShader(program, webgl.shaders.compileShader(gl, gl.VERTEX_SHADER, webgl.shaders.VERTEX_SHADER));
            gl.attachShader(program, webgl.shaders.compileShader(gl, gl.FRAGMENT_SHADER, webgl.shaders.FRAGMENT_SHADER));
            gl.linkProgram(program);
            if (!gl.getProgramParameter(program, gl.LINK_STATUS)) {
                throw `Unable to link program:  ${gl.getProgramInfoLog(program)}`;
                ;
            }
            gl.useProgram(program);
            /**
             * Blending
            */
            gl.blendFunc(gl.ONE, gl.ONE_MINUS_SRC_ALPHA);
            gl.enable(gl.BLEND);
        }
        resize() {
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
    webgl.render = render;
})(webgl || (webgl = {}));
var webgl;
(function (webgl) {
    var shaders;
    (function (shaders) {
        shaders.VERTEX_SHADER = `#version 300 es
    in vec3 circleCoord;
    uniform vec2 u_resolution;
    out float size;
    void main () {
      // convert pixel space to clip space (-1, 1 ranges, flipped y axis)
      // (https://www.html5rocks.com/en/tutorials/webgl/webgl_fundamentals/)
      vec2 circle = circleCoord.xy / u_resolution * vec2(2, -2) - vec2(1, -1);
      gl_Position = vec4(circle, 0, 1);
      // set circle size from z coord of circleCoord (gl.POINT render option)
      gl_PointSize = size = circleCoord.z * 2.0 + 1.0;
    }`;
        shaders.FRAGMENT_SHADER = `#version 300 es
    precision mediump float;
    in float size;
    out vec4 outColor;
    void main () {
      // distance from center circle circle to current fragment coordinate
      // gl_PointCoord is just for gl.POINT renders, returning (0-1, 0-1) position from circle
      float dist = length(gl_PointCoord - vec2(.5, .5)) * 2.0;
      // only color in circle insides
      if (dist > 1.0)
        discard;
      // anti-aliasing (https://rubendv.be/blog//opengl/drawing-antialiased-circles-in-opengl/)
      // outer 2 pixels are anti-aliasing, which corresponds to an outer annulus
      float aliasFrac = (size - 2.0) / size;
      float alpha = smoothstep(1.0, aliasFrac, dist) * 0.9;
      outColor = vec4(((size - 2.5) / 100.0), 0.2, 0.3, alpha);
      // pre-multiply alpha... something about blending edges
      outColor.rgb *= outColor.a;
    }`;
        function compileShader(gl, shaderType, shaderSource) {
            const shader = gl.createShader(shaderType);
            gl.shaderSource(shader, shaderSource);
            gl.compileShader(shader);
            if (!gl.getShaderParameter(shader, gl.COMPILE_STATUS)) {
                throw `Could not compile shader:  ${gl.getShaderInfoLog(shader)}`;
            }
            return shader;
        }
        shaders.compileShader = compileShader;
    })(shaders = webgl.shaders || (webgl.shaders = {}));
})(webgl || (webgl = {}));
//# sourceMappingURL=webgl.render.js.map
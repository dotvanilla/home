declare namespace webgl {
    interface CanvasFrameAction {
        (width: number, height: number): void;
    }
    /**
     * A typescript rewrite of https://github.com/guybedford/wasm-demo/blob/master/lib/render.js
    */
    class render {
        private canvas;
        private timeStep;
        private init;
        private circleFloat32Array;
        private circleCount;
        gl: WebGLRenderingContext;
        /**
         * Program and shaders
        */
        program: WebGLProgram;
        /**
         * Viewport
        */
        u_resolutionLoc: WebGLUniformLocation;
        displayWidth: number;
        displayHeight: number;
        iterations: number;
        lastDrawTime: number;
        iterationConvergence: number;
        convergedIterations: number;
        /**
         * initRender
         *
         * @param init call generation function
        */
        constructor(canvas: HTMLCanvasElement, timeStep: CanvasFrameAction, init: CanvasFrameAction, circleFloat32Array: ArrayBuffer, circleCount: number);
        /**
         * Draw loop
        */
        private draw;
        private updateIterationCount;
        private static initDevice;
        resize(): void;
    }
}
declare namespace webgl.shaders {
    const VERTEX_SHADER: string;
    const FRAGMENT_SHADER: string;
    function compileShader(gl: WebGLRenderingContext, shaderType: number, shaderSource: string): WebGLShader;
}

namespace webgl.shaders {

    export const VERTEX_SHADER: string = `#version 300 es
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

    export const FRAGMENT_SHADER: string = `#version 300 es
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

    export function compileShader(gl: WebGLRenderingContext, shaderType: number, shaderSource: string) {
        const shader = gl.createShader(shaderType);

        gl.shaderSource(shader, shaderSource);
        gl.compileShader(shader);

        if (!gl.getShaderParameter(shader, gl.COMPILE_STATUS)) {
            throw `Could not compile shader:  ${gl.getShaderInfoLog(shader)}`;
        }

        return shader;
    }
}
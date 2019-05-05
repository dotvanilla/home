#version 300 es
in vec3 circleCoord;
uniform vec2 u_resolution;
out float size;

void main() {
	// convert pixel space to clip space (-1, 1 ranges, flipped y axis)
	// (https://www.html5rocks.com/en/tutorials/webgl/webgl_fundamentals/)
	vec2 circle = circleCoord.xy / u_resolution * vec2(2, -2) - vec2(1, -1);
	gl_Position = vec4(circle, 0, 1);
	// set circle size from z coord of circleCoord (gl.POINT render option)
	gl_PointSize = size = circleCoord.z * 2.0 + 1.0;
}
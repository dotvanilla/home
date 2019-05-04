#version 300 es
precision mediump float;
in float size;
out vec4 outColor;

void main() {
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
}
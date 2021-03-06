#version 400
layout (location = 0) in vec3 vertexPosition;
layout (location = 3) in vec3 vertexNormal;
layout (location = 2) in vec2 vertexUV;

out vec2 fragmentUV;
out vec3 fragmentNormal;

uniform mat4 u_mvp;

// TODO: Homework 3 - Add any other necessary uniforms or input/output variables here

void main()
{
	// TODO: Homework 3
	fragmentUV = vertexUV;
	fragmentNormal = (u_mvp * vec4(vertexNormal, 0.0)).xyz;
	gl_Position = u_mvp * vec4(vertexPosition, 1.0);

}
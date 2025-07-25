#version 450

layout(location = 0) in vec3 inPosition;
layout(location = 1) in vec4 inColor;

// Camera/view-projection
layout(binding = 0) uniform UniformBufferObject {
    mat4 vp;
} ubo;

// Per-mesh model matrix
layout(push_constant) uniform PushConstants {
    mat4 model;
} pc;

layout(location = 0) out vec4 fragColor;

void main() {
    gl_Position = ubo.vp * pc.model * vec4(inPosition, 1.0);
    fragColor = inColor;
}


/* #version 450 */

/* layout(location = 0) in vec3 inPosition; */
/* layout(location = 1) in vec4 inColor; */

/* layout(binding = 0) uniform UniformBufferObject { */
/*     mat4 vp; */
/* } ubo; */

/* layout(location = 0) out vec4 fragColor; */

/* void main() { */
/*     gl_Position = ubo.vp * vec4(inPosition, 1.0); */
/*     fragColor = inColor; */
/* } */

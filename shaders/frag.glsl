#version 330 core

out vec4 FragColor;

#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution;
uniform float u_time;

//shader toy remapping variables
#define iTime u_time



void main(void)
{    
    vec3 iResolution = vec3(u_resolution.x, u_resolution.y, 0.0);
    vec2 fragCoord = gl_FragCoord.xy;
    vec4 fragColor;
    
    /*
    *
    *
    *   Copy and paste shadertoy code down here
    *
    *                  ___
    *                  | |
    *                  | |
    *               ___| |___
    *               \       /
    *                \     /
    *                 \   /
    *                  \ /
    *                   '
    *
    */

    // Normalized pixel coordinates (from 0 to 1)
    vec2 uv = fragCoord/iResolution.xy;

    // Time varying pixel color
    vec3 col = 0.5 + 0.5*cos(iTime+uv.xyx+vec3(0,2,4));

    // Output to screen
    fragColor = vec4(col,1.0);

    /*  
    *
    *                   .
    *                  / \
    *                 /   \
    *                /     \
    *               /__   __\
    *                  | |
    *                  | |
    *                  |_|      
    *
    */

    FragColor = fragColor;
}
#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution;
uniform float u_time;

void main(){
    vec2 st=gl_FragCoord.xy/u_resolution;
    vec3 color=vec3(.0);
    
    st-=.5;
    
    float d=length(st);
    
    float unit=smoothstep(.5,sin(u_time)*.4,d);
    
    color=vec3(unit);
    
    gl_FragColor=vec4(color,1.);
}
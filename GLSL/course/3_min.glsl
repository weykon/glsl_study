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
    
    float unit=smoothstep(.2,.1,d);
    
    float g=min(sin(u_time*5.) * unit,.98);
    float r=min(cos(u_time) * unit,.7);

    color=vec3(r,g,unit);
    
    gl_FragColor=vec4(color,1.);
}
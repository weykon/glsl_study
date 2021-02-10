#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution;
uniform vec2 u_mouse;
uniform float u_time;

void main(){
    vec2 st=gl_FragCoord.xy/u_resolution.xy;
    
    vec3 color=vec3(0.);
    
    float r=length(st);
    float a=atan(st.x,st.y);
    float l=atan(st.x-.02,st.y-.02);

    color=vec3(step(a,r));
    color+=vec3(step(a,l));
    gl_FragColor=vec4(color,1.);
}
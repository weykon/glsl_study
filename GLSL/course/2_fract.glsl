#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution;

void main(){
    vec2 st=gl_FragCoord.xy/u_resolution.xy;
    st.x*=u_resolution.x/u_resolution.y;
    
    vec3 color=vec3(.0);
    
    float d=.0;
    
    st=st*2.-1.;
    
    d=length(abs(st)-.5);
    
    gl_FragColor=vec4(vec3(fract(d*10.)),1.);
}
#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution;
uniform float u_time;

void main(){
    vec2 st=gl_FragCoord.xy/u_resolution;
    vec3 color=vec3(0.);
    
    st-=.5;
    st*=2.*6.;
    
    st.x+=u_time*5.;
    
    vec3 bg=vec3(1.);
    
    color+=bg;
    
    float p=smoothstep(.2,.0,st.y-sin(st.x));
    float c=smoothstep(st.y-sin(st.x)-.9,1.,.0);
    color-=vec3(p);
    color-=vec3(c);
    
    gl_FragColor=vec4(color,1.);
}


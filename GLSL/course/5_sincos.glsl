#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution;

void main(){
    vec2 st=gl_FragCoord.xy/u_resolution;
    vec3 color=vec3(0.);
    
    st-=.5;
    st*=2.*6.;
    
    vec3 bg=vec3(1.);
    
    color+=bg;
    
    float p=smoothstep(.3,.0,st.y-sin(st.x));
    float c=smoothstep(.0,.3,st.y-sin(st.x));

    color-=vec3(p);
    color+=vec3(c);

    gl_FragColor=vec4(color,1.);
}


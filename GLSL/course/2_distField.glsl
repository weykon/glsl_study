

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
    
    d=length(min(abs(st)-.5,0.));
    d=length(max(abs(st)-.5,0.));
    
    gl_FragColor=vec4(vec3(fract(d*10.)),1.);
    // gl_FragColor=vec4(vec3(d),1.);
    
    //   gl_FragColor = vec4(vec3( step(.3,d) ),1.0);
    //   gl_FragColor = vec4(vec3( step(.3,d) * step(d,.4)),1.0);
    //   gl_FragColor = vec4(vec3( smoothstep(.3,.4,d)* smoothstep(.6,.5,d)) ,1.0);
}
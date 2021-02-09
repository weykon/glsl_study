#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution;

void main(){
    vec2 st=gl_FragCoord.xy/u_resolution;
    vec3 color=vec3(0.);
    
    float border = step(.5,st.x);
    border= step(st.x,.5);

    color = vec3(border);

    gl_FragColor=vec4(color,1.);
}


#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution;

void main(){
    vec2 st=gl_FragCoord.xy/u_resolution;
    vec3 color=vec3(.0);
    
    vec2 border=step(vec2(.2),st);
    float pct=border.x*border.y;
    
    color=vec3(pct);
    
    gl_FragColor=vec4(color,1.);
}
#ifdef GL_ES
precision mediump float;
#endif

uniform float u_time;
uniform vec2 u_resolution;

void main(){
    vec2 st=gl_FragCoord.xy/u_resolution;
    vec3 color=vec3(.0);
    
    // 左下角
    vec2 bl=step(vec2(.2),st);
    float pct=bl.x*bl.y;
    
    // 右上角
    vec2 tr=step(vec2(.2),1.-st);
    pct*=tr.x*tr.y;
    
    float x=pow(sin(u_time),2.);
    
    color=vec3(abs(pct-1.)*x);
    
    gl_FragColor=vec4(color,1.);
}
precision mediump float;
uniform vec2 u_resolution;
uniform float u_time;
uniform vec2 u_mouse;

void main(){
    vec2 norPos=gl_FragCoord.xy/u_resolution;
    gl_FragColor=vec4(norPos.x,norPos.y,.0,1.);
}
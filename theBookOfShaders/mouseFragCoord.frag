precision mediump float;
uniform vec2 u_resolution;
uniform float u_time;
uniform vec2 u_mouse;

void main(){
    vec2 norPos=gl_FragCoord.xy/u_resolution;
    vec2 norMPos = u_mouse / u_resolution;
    float dis = distance(norPos, norMPos);
    dis > 0.2 ? dis = 0.0 : dis = dis;
    gl_FragColor=vec4(dis+norPos.x,dis+norPos.y,.0,1.);
}
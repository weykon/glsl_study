precision mediump float;
uniform float u_time;
uniform float u_mouse;

void main(){
    gl_FragColor=vec4(abs(sin(u_time)),abs(cos(u_time)),u_time,1.0);
}
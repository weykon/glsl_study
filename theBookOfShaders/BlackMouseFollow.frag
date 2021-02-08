precision mediump float;

uniform vec2 u_mouse;
uniform vec2 u_resolution;
uniform float u_time;

vec3 mousePoint(vec2 mousePos){
    return vec3(1.,1.,1.);
}

void main(){
    vec3 color=vec3(.0,.0,.0);
    vec2 st=gl_FragCoord.xy/u_resolution;
    vec2 mousePos=u_mouse/u_resolution;
    color=vec3(sin(u_time*2.),(st.y+st.x)*cos(u_time),st.y-st.x);
    gl_FragColor=vec4(color,1.);
}
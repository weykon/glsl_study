#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution;
uniform float u_time;

float box(in vec2 _st, in vec2 _size ){
    _size = vec2(.5) - _size * .5;
    vec2 uv = smoothstep(_size,_size + vec2(.001),_st);
    uv *= smoothstep(_size,_size + vec2(.001),vec2(1.)-_st);
    return uv.x * uv.y;
}

float cross(in vec2 _st, float _size){
    return box(_st,vec2(_size,_size/4.)) + box(_st, vec2(_size/4.,_size));
}


void main(){
    vec2 st = gl_FragCoord.xy/u_resolution.xy;
    vec3 color = vec3(.0);

    vec2 translate = vec2(cos(u_time),sin(u_time));
    st += translate * .35;

    color = vec3(st.x,st.y,.0);

    color += vec3(cross(st,.25));

    gl_FragColor = vec4(color,1.);
}
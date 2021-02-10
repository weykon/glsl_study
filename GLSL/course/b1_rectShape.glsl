#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution;

float rectShape(vec2 position,vec2 wh){
    wh=vec2(.5)-wh*.5;
    vec2 shaper=vec2(step(wh.x,position.x),step(wh.y,position.y));
    shaper*=vec2(step(wh.x,1.-position.x),step(wh.y,1.-position.y));
    return shaper.x*shaper.y;
}

void main(){
    vec2 position=gl_FragCoord.xy/u_resolution.xy;
    vec3 color=vec3(0.);
    float rect=rectShape(position,vec2(.2,.2));
    color=vec3(rect);
    gl_FragColor=vec4(color,1.);
}
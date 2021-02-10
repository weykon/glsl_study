#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution;

float circleShape(vec2 position,float radius){
    return step(radius,length(position));
}

void main(){
    vec2 position=gl_FragCoord.xy/u_resolution.xy;
    
    vec3 color=vec3(0.);
    
    position-=vec2(.5);
    
    float circle=circleShape(position,.4);
    
    color=vec3(circle);
    
    gl_FragColor=vec4(color,1.);
}
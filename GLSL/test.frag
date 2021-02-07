precision mediump float;
uniform vec2 u_resolution;
uniform float u_time;
uniform vec2 u_mouse;
uniform sampler2D u_buffer0;

void main(){
    vec2 uv=gl_FragCoord.xy/u_resolution;
    
    uv-=.5;
    
    float c=clamp(-.25,.25,uv.x);
    float c1=clamp(-.25,.25,uv.y);
    c=abs(c);
    c1=abs(c1);
    
    vec4 color0=texture2D(u_buffer0,uv);
    
    vec2 p=vec2(.0,.0);
    
    vec3 col=vec3(c,c,c);
    
    vec3 col1=vec3(c1,c1,c1);
    
    vec3 color=col+col1;
    
    gl_FragColor=vec4(color,1.);
    
}


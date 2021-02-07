precision mediump float;

uniform vec2 u_resolution;
uniform vec2 u_mouse;
// uniform float u_time;

float Circle(vec2 uv,vec2 p,float r,float blur){
    float d=length(uv-p);
    float c=smoothstep(r,r-blur,d);
    return c;
}

float Smiley(vec2 uv,vec2 p,float size){
    uv-=p;
    uv/=size;
    
    float mask=Circle(uv,vec2(0.),.4,.05);
    
    mask-=Circle(uv,vec2(-.13,.2),.07,.01);
    mask-=Circle(uv,vec2(.13,.2),.07,.01);
    
    float mouth=Circle(uv,vec2(0.,0.),.3,.02);
    mouth-=Circle(uv,vec2(0.,.1),.3,.02);
    
    mask-=mouth;
    
    return mask;
}

void main(){
    vec2 uv=gl_FragCoord.xy/u_resolution.xy;
    
    uv-=.5;
    
    uv.x*=u_resolution.x/u_resolution.y;
    vec3 col=vec3(0.);
    
    float t=u_time;
    
    vec2 p=vec2(sin(t)*.7,cos(t)*.3);
    
    float mask=Smiley(uv,p,.3);
    
    col=vec3(1.,1.,0.)*mask;
    
    gl_FragColor=vec4(col,1.);
    
}

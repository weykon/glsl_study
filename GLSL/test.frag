#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution;
uniform sampler2D uCat;

void main(){
    vec2 st=gl_FragCoord.xy/u_resolution;
    vec3 color=vec3(.0);

    // 左下角
    vec2 bl=step(vec2(.2),st);
    float pct=bl.x*bl.y;
    
    // 右上角
    vec2 tr=step(vec2(.2),1.0-st);
    pct *= tr.x * tr.y;    

    vec4 pic = texture2D(uCat,st);

    color=vec3(pic.x*pct,pic.y*pct,pic.z*pct);
    
    gl_FragColor=vec4(color,1.);
}
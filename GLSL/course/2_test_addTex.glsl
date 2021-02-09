#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution;
uniform sampler2D u_texture_0;
uniform float u_time;

void main() {
    vec2 st = gl_FragCoord.xy / u_resolution;
    vec3 color = vec3(0.0);
    
    // 左下角
    vec2 bl = step(vec2(0.25), st);
    float pct = bl.x * bl.y;
    
    // 右上角
    vec2 tr = step(vec2(0.25), 1.0 - st);
    pct *= tr.x * tr.y;
    
    st *= 2.0;
    st -= 0.5;
    
    vec3 pic = texture2D(u_texture_0, st, 0.0).rgb;
    
    color = vec3(abs(pct - 1.0));
    
    color += pic;
    
    gl_FragColor = vec4(color, 1.0);
}


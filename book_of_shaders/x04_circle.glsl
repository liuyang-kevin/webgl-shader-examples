#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution;
uniform vec2 u_mouse;
uniform float u_time;

void main(){
    vec2 st=gl_FragCoord.xy/u_resolution;
    float pct=0.;
    
    // 中心点距离计算百分比
    // a. The DISTANCE from the pixel to the center
    pct=distance(st,vec2(.5));
    
    // 计算到中心的向量,在计算向量长度
    // b. The LENGTH of the vector
    //    from the pixel to the center
    // vec2 toCenter = vec2(0.5)-st;
    // pct = length(toCenter);
    
    // 勾股弦开根号实现
    // c. The SQUARE ROOT of the vector
    //    from the pixel to the center
    // vec2 tC = vec2(0.5)-st;
    // pct = sqrt(tC.x*tC.x+tC.y*tC.y);
    
    // pct=distance(st,vec2(.4))+distance(st,vec2(.6));
    // pct=distance(st,vec2(.4))*distance(st,vec2(.6));
    // pct=min(distance(st,vec2(.4)),distance(st,vec2(.6)));
    // pct=max(distance(st,vec2(.4)),distance(st,vec2(.6)));
    // pct=pow(distance(st,vec2(.4)),distance(st,vec2(.6)));
    
    vec3 color=vec3(pct);
    
    gl_FragColor=vec4(color,1.);
}

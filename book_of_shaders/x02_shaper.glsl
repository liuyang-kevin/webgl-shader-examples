#ifdef GL_ES
precision mediump float;
#endif

uniform float u_time;
uniform vec2 u_resolution;

void main(){
	vec2 st=gl_FragCoord.xy/u_resolution.xy;
	vec3 color=vec3(0.);
	
	// // Each result will return 1.0 (white) or 0.0 (black).
	// float left=step(.1,st.x);// Similar to ( X greater than 0.1 )
	// float bottom=step(.1,st.y);// Similar to ( Y greater than 0.1 )
	
	// // The multiplication of left*bottom will be similar to the logical AND.
	// // left 乘 bottom 效果相当于逻辑 AND —— 当 x y 都为 1.0 时乘积才能是 1.0。
	// color=vec3(left*bottom);
	
	float left=smoothstep(.01,.04,st.x);
	float bottom=smoothstep(.01,.04,st.y);
	color=vec3(left*bottom);
	
	gl_FragColor=vec4(color,1.);
}

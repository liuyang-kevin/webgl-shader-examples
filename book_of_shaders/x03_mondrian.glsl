#ifdef GL_ES
precision mediump float;
#endif

uniform float u_time;
uniform vec2 u_resolution;

void main(){
	vec2 st=gl_FragCoord.xy/u_resolution.xy;
	vec3 color=vec3(0.);
	
	vec2 block0=vec2(.5,.3);
	if(lessThanEqual(st,block0).x&&lessThanEqual(st,block0).y){
		color=vec3(0.);
	}else{
		color=vec3(1.);
	}
	
	if(st.x<.8&&st.x>.3&&st.y>.4&&st.y<.8){
		color=vec3(0.);
	}
	if(st.x<.79&&st.x>.31&&st.y>.41&&st.y<.79){
		color=vec3(1.);
	}
	
	gl_FragColor=vec4(color,1.);
}

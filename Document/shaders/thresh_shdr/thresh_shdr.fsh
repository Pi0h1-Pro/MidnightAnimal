//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

const vec4 uScale = vec4(4.75,4.75,4.75,1.0);
const vec4 uBias = vec4(-0.75,-0.75,-0.75,0.0);

void main()
{
   gl_FragColor = max(vec4(0.0), v_vColour * texture2D(gm_BaseTexture, v_vTexcoord/* *tScale*/) + uBias) * uScale;
}


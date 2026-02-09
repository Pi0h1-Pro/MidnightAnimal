varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec4 uv12;
varying vec4 uv34;
varying vec4 uv56;
varying vec4 uv78;

void main()
{
    vec4 Blur = vec4(0.0);
    Blur += texture2D( gm_BaseTexture, uv12.xy );
    Blur += texture2D( gm_BaseTexture, uv12.zw );
    Blur += texture2D( gm_BaseTexture, uv34.xy );
    Blur += texture2D( gm_BaseTexture, uv34.zw );
    Blur += texture2D( gm_BaseTexture, v_vTexcoord);
    Blur += texture2D( gm_BaseTexture, uv56.xy );
    Blur += texture2D( gm_BaseTexture, uv56.zw );
    Blur += texture2D( gm_BaseTexture, uv78.xy );
    Blur += texture2D( gm_BaseTexture, uv78.zw );

    Blur.rgb/=9.0;
    Blur.a = 1.0;

    gl_FragColor = v_vColour * Blur;
}

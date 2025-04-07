struct VSPS
{       
    float4 pos  : POSITION0;
    float4 tex0: TEXCOORD0;
    half4  col0: COLOR0;
};

sampler2D tex0 : register( s0 );


struct INVS 
{
	float4 pos  : POSITION0;
	float4 col0 : COLOR0;	        
        float4 tex0 : TEXCOORD0; 
};

VSPS VertexMain( INVS In )
{
	VSPS Out;
	Out.pos = In.pos.xyzw * float4( 2.0f, -2.0f, 0.0f, 0.0f ) + float4( -1.0f, 1.0f, 0.0f, 1.0f );
	Out.col0 = In.col0;
        Out.tex0 = In.tex0;
	return Out;
}



half4 PixelMain( VSPS In ) : COLOR 
{ 
    half4 res = tex2D( tex0, In.tex0 );
    half3 gray = dot( half3( 1.0f/3.0,  1.0f/3.0, 1.0f/3.0 ), res.xyz );
    return half4( gray, res.w ) * In.col0; 
}
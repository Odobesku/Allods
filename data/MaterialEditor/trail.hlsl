//DBSWITCH ALPHA      0 1

float4x4   modelViewMatrix : register( c0 );
float4	   texOffset : register( c4 ); 	


struct InputVS 
{
	float4 pos : POSITION0;
	float2 tex : TEXCOORD0;	   
#if ALPHA == 0	
	float4 col  : COLOR0;	        
#endif
#if ALPHA == 1	
	float  col  : COLOR0;	        
#endif

};

struct VSPS
{
	float4 pos : POSITION;
	float2 tex : TEXCOORD0;	       
	half4  col : COLOR0;
};

VSPS VertexMain( InputVS In )
{
	VSPS Out;
	Out.pos = mul( modelViewMatrix, In.pos );
    Out.tex = In.tex;
	
#if ALPHA == 0
	Out.col = In.col;
#endif

#if ALPHA == 1
	Out.col = half4( 1.0h, 1.0h, 1.0h, In.col );
#endif

	return Out;
}

sampler2D tex0 : register( s0 );

half4 PixelMain( VSPS In ) : COLOR
{
	return In.col * tex2D( tex0, In.tex );
}

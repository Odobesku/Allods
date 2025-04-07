float4x4   modelViewMatrix : register( c0 );

struct InputVS 
{
	float4 pos  : POSITION0;
	float4 col	: COLOR0;	        
};

struct VSPS
{
	float4 pos : POSITION;
        float4 ptx : TEXCOORD0;
	half4 col : COLOR0;
};

VSPS VertexMain( InputVS In )
{
	VSPS Out;
	Out.pos = mul( modelViewMatrix, In.pos );
	Out.col = In.col;
        Out.ptx = In.pos * 10.0f;
	return Out;
}

half4 PixelMain( VSPS In ) : COLOR
{
        float3 s = sin( In.ptx  );
        
        float coeff = In.col.a < 0.01f ? 1.0f : -1.0f;
        
        float r = 0.5f + 0.5f * dot( s, float3( 1.7423f, 2.2342f, 1.53235f ) ) * coeff;
        
        if( r < 0.7f )
        {
           discard;
        }

       	return float4( s * coeff * 0.5f + 0.5f, 1.0f );
}

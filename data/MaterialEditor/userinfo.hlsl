float4x4   modelViewMatrix : register( c0 );

struct InputVS 
{
	float4 pos : POSITION0;
	float4 col : COLOR0;	        
};

struct VSPS
{
	float4 pos : POSITION;
	half4  col : COLOR0;
};

VSPS VertexMain( InputVS In )
{
	VSPS Out;
	Out.pos = mul( modelViewMatrix, In.pos );
        Out.pos -= Out.pos.wwww * float4( 0.0f, 0.0f, 0.00001f, 0.0f );  
	Out.col = In.col;
	return Out;
}

half4 PixelMain( VSPS In ) : COLOR
{
       	return In.col;
}

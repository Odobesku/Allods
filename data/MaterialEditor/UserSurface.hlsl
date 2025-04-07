float4x4   modelViewMatrix : register( c0 );
float4     lightDir : register( c4 );

struct InputVS 
{
	float4 pos : POSITION0;
	float4 normal : NORMAL;
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
	Out.col = dot( lightDir, In.normal ) * In.col;
	return Out;
}

half4 PixelMain( VSPS In ) : COLOR
{
       	return In.col;
}

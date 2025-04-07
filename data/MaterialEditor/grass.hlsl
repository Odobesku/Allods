
float4x4 modelViewMatrix       : register( c0 );
float4     morphFactor : register( c4 );
float4     eyePos : register( c5 );
float4     lightDir : register( c6 );
float4     dirSpecularColor      : register( c7 );
float4     eyeSpecularColor      : register( c8 );
float4     minColor : register( c9 );
float4     madColor : register( c10 );
float4     fogParams : register( c11 );
float4	   offsets : register( c12 );
float4     baseColor : register( c13 );
float4     pointLightColor : register( c14 );

float4     cutPoint : register( c15 );




                     
struct InputVS 
{
	float4 pos0  : POSITION0;
        float4 tex0  : TEXCOORD0;
        float4 col0  : COLOR0; 
	float4 col1  : COLOR1; 
	
};

struct VSPS
{       
	float4 pos : POSITION;
        float4 tex0: TEXCOORD0;
        half4 col0: COLOR0; 
	half4 col1: COLOR1; 
	
        float  fog: FOG; 
                
};


VSPS VertexMain( InputVS In )
{
	VSPS Out;             
        float3 viewVector = eyePos.xyz - In.pos0.xyz; 
        float v = morphFactor.x * dot( viewVector.xy, viewVector.xy ) + morphFactor.y;
	float4 sico = In.col1.zwzw * float4( +2.0f, +2.0f, -2.0f, +2.0f ) + float4( -1.0f, -1.0f, +1.0f, -1.0f );


        float4 pos = In.pos0;
	pos.xy += offsets.xx * sico.yx + offsets.yy * sico.zw;
        float4 tex = In.tex0 / 4096.0f;
        float3 nor = In.col0.xyz * 2.0f - 1.0f;



        
	float d = sqrt( dot( viewVector, viewVector ) );
        viewVector /= d;
        float3 halfVector = normalize( viewVector + lightDir.xyz );
        
        float eyeSpec;
        float dirSpec;
        float dirDiff;

        eyeSpec = dot( viewVector, nor );

        dirSpec = dot( halfVector, nor );
        dirDiff = dot( lightDir, nor );
        
        eyeSpec = max( 0.0f, eyeSpec );
        dirSpec = max( 0.0f, dirSpec );
        
        eyeSpec = 1.0f - eyeSpec;  
	eyeSpec  = pow( eyeSpec, eyeSpecularColor.w );

        Out.col1  = eyeSpecularColor * eyeSpec;

        dirSpec  = max( dirSpec * 21.0f - 20.0f, 0.0f );

        
        Out.col0.xyz = 0.5f * ( baseColor + pointLightColor * In.col0.w + minColor * In.col1.y + madColor * In.col1.x );  
        Out.col0.w =  v * 0.05f;

	float2 cutDiff = pos.xy - cutPoint.xy;
	Out.col0.w *= saturate( dot( cutDiff, cutDiff ) * cutPoint.w - 0.25f ); 
        Out.pos = mul( modelViewMatrix, pos );
        Out.tex0 = tex;
        Out.fog = fogParams.x + d * fogParams.y;


 
        return Out;
}


sampler2D tex0 : register( s0 );
sampler2D tex1 : register( s1 );


half4   ambientColorA           : register( c0 );
half4   ambientColorB           : register( c1 );
half4   diffuseColor            : register( c2 );
half4   fogColorP               : register( c3 );
half4   specularColor           : register( c4 );            


half4 PixelMain( VSPS In ) : COLOR 
{ 
      
    half4 dif = tex2D( tex0, In.tex0 ) * In.col0 * 2.0h;
    dif.xyz += In.col1;
    dif.w = dif.w * 0.1h  - 0.0001h;
        
    return dif;
}

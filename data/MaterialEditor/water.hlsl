//DBDEFINE  USER_EMISSIVE 
//DBDEFINE  USER_DIFFUSE
//DBSWITCH1 USER_TEXTURES


float4x4 modelViewMatrix       : register( c0 );
float4   eyePos                : register( c4 );
float4   lightDir              : register( c5 );
float4   dirSpecularColors[4]  : register( c6 );
float4   eyeSpecularColors[4]  : register( c10 );
float4   eyeDiffuseColor       : register( c14 );
float4   dirDiffuseMin         : register( c15 );
float4   dirDiffuseMad         : register( c16 );
float4   waterPlane            : register( c17 );
float4   underWaterColor       : register( c18 );
float4   waterParams           : register( c19 );
   

struct InputVS 
{
	float4 pos0: POSITION0;
        float4 col0: COLOR0;        
};

struct VSPS
{       
	float4 pos0 : POSITION;
        float4 tex0 : TEXCOORD0; 
        float4 tex1 : TEXCOORD1; 
        float4 tex2 : TEXCOORD2; 
        float4 tex3 : TEXCOORD3;

};


VSPS VertexMain( InputVS In )
{
	VSPS Out;

        float4 pos = In.pos0;
        float transp = dot( In.pos0, waterPlane );  
        pos.z = pos.z - transp / waterPlane.z;
        pos = mul( modelViewMatrix, pos );

        Out.pos0   = pos;

        pos.xy += pos.ww * float2( 1.0f, -1.0f );
         
        Out.tex2   = mul( modelViewMatrix, float4( 0.05f, 0.0f, 0.0f, 0.0f ) );
        Out.tex3   = mul( modelViewMatrix, float4( 0.0f, 0.05f, 0.0f, 0.0f ) );
        Out.tex0   = pos * float4( +0.5f, -0.5f, 1.0f, 1.0f );

        Out.tex1   = float4( waterParams.xyz + In.pos0.xyz * 0.125, min( transp * waterParams.z, waterParams.w ) );
        return Out;
}


sampler2D tex0 : register( s0 );
sampler2D tex1 : register( s1 );
 
                            

half4 PixelMain( VSPS In ) : COLOR 
{ 
    half4 r1 = tex2D( tex1, In.tex1 ) - 0.5f;
    float4 texcoords = In.tex0;

    texcoords.xy += ( r1.x * In.tex2.xy + r1.y * In.tex3.xy ) * texcoords.w; 

    half4 r0 = tex2Dproj( tex0, texcoords );
    
    return  float4( r0.xyz, In.tex1.w ); 
         
}
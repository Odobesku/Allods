//DBSWITCH MORPH      0 1
//DBSWITCH SIMPLE     0 2




#ifndef MORPH
#define MORPH  0
#endif

float4x4 modelViewMatrix       : register( c0 );
float4   lightDir              : register( c4 );
float4   dirSpecularColor      : register( c5 );
float4   eyeSpecularColor      : register( c6 );
float4   dirDiffuseMin         : register( c7 );
float4   dirDiffuseMad         : register( c8 );
float4   waterPlane            : register( c9 );
float4   fogColor              : register( c10 );
float4   fogParams             : register( c11 );
float4   gridColor             : register( c12 );
float4x4 texMatrix             : register( c13 );   


float4   offset                : register( c17 );
float4   morphFactor           : register( c18 );
float4   texParams             : register( c19 );
float4   eyePos                : register( c20 );
float4   zzzz                  : register( c21 );
float4   time                  : register( c22 );

struct InputVS 
{
         
	float4 pos0: POSITION0;
        float4 pos1: POSITION1;
        float4 col0: COLOR0;
        float4 col1: COLOR1;
        float4 tex0: TEXCOORD0; 
        
};

struct VSPS
{       
	float4 pos: POSITION;



	float3 dir: TEXCOORD0;
        float4 prr: TEXCOORD1;
        float4 prj: TEXCOORD2;
	float4 dyx: TEXCOORD3;
	
	float2 tw0: TEXCOORD4;
	float2 tw1: TEXCOORD5;
	float2 tw2: TEXCOORD6;
	
	float4 cls: TEXCOORD7;
	
		
	
	float4  fog: COLOR0;          

};



VSPS VertexMain( InputVS In )
{
	VSPS Out;
         
        float3 viewVector, halfVector;
        float4 pos;
        float4 tpos; 
        float  morph = 1;

        float z; 
        float rz = dot( In.tex0, zzzz ); 
        
 

#if MORPH == 1
        float4 xyxy = In.tex0;
        morph = dot( xyxy, morphFactor );
 
        pos.xy = lerp( In.pos1.zw, In.pos1.xy, morph );
        pos.z  = rz;
        pos.w  = 1.0f;           
        z = lerp( In.pos0.y, In.pos0.x, morph );
        float3 nor = lerp( In.col1.xyz, In.col0.xyz, morph ) * 2.0f - 1.0f;    
#endif
   


#if MORPH == 0
        pos.xy = In.pos1.xy;
        pos.z  = rz;
        pos.w  = 1.0f; 
        z = In.pos0.x;          
        float3 nor = In.col0.xyz * 2.0f - 1.0f; 
#endif

        
	 float b = pos.z - z;

	float2 tw = pos.xy * 0.125f;
	Out.tw0 =   tw + time.w * float2( +0.0h, +3.0h );
	Out.tw1 = ( tw + time.w * float2( -1.0h, -2.0h ) ) * 0.5f;
	Out.tw2 = ( tw + time.w * float2( +1.0h, -2.0h ) ) * 0.25f;


        viewVector = eyePos.xyz - pos.xyz;
        Out.dir = viewVector;
	pos.xyz += offset.xyz;        
                
        float4 outPos = pos;        
        

        float d = sqrt( dot( viewVector, viewVector ) );
        
        
        
	float h = saturate( fogParams.x + d * fogParams.y );
	
	

	Out.fog.w = h;
	Out.fog.xyz = fogColor.xyz;
	

        Out.pos  = mul( modelViewMatrix, outPos );
	
	Out.cls.xyz = saturate( b * 0.25f ); 
	Out.cls.w = saturate( b / ( 0.01h + saturate( dot( nor, normalize( viewVector ) ) ) ) );
	
	float4 tx = Out.pos;
        Out.prj = float4( tx.w, tx.w, 0.0f, 0.0f ) + tx.xyzw * float4( -1.0f, -1.0f, 0.0f, 2.0f );
 	Out.prr = float4( tx.w, tx.w, 0.0f, 0.0f ) + tx.xyzw * float4( +1.0f, -1.0f, 0.0f, 2.0f );
 	
	Out.dyx = float4( modelViewMatrix[0][0], modelViewMatrix[1][0], modelViewMatrix[0][1], modelViewMatrix[1][1] ) * 2.0f;

 	
        
        return Out;
}


sampler2D tex0 : register( s0 );
sampler2D tex1 : register( s1 );
sampler2D refl : register( s2 );
sampler2D refr : register( s4 );



float4  specularColor: register( c5 );            
half4   waterColor1: register( c8 );            
half4   waterColor2: register( c9 );            


            

half4 PixelMain( VSPS In ) : COLOR 
{
  	
	half3 b = half3( -0.5h, -0.5h, 0.0h );

	b = half3( -0.5h, -0.5h, 0.0h ) + ( tex2D( tex1, In.tw0 ).xyz + tex2D( tex1, In.tw1 ).xyz + tex2D( tex1, In.tw2 ).xyz ) * 0.33h;
	
	
	half4 fresnel = tex2D( tex0, float2( 0.5f, abs( dot( normalize( In.dir.xyz ), normalize( b ) ) ) ) );


	half4 col = lerp( waterColor1, waterColor2, In.cls.yyyy );
	
	float4 dif = float4( ( b.x * In.dyx.xy - b.y * In.dyx.zw ) * In.prj.w, 0.0f, 0.0f );

	
  	half3 a1 = lerp( col.xyz * b.zzz, tex2Dproj( refl, In.prj + dif ).xyz, col.w );

        half3 ar = tex2Dproj( refr, In.prr ).xyz;
        half4 sr = tex2Dproj( refr, In.prr - dif * 0.1 );

	ar = sr.w < 0.999h ? ar : sr.xyz;

	half4 res;
	res.w = In.cls.w;
	#if SIMPLE == 0
		res.xyz = res.w * lerp( In.fog.xyz, lerp( ar * fresnel.xyz, a1, fresnel.w ) , In.fog.w );
	#endif
	#if SIMPLE == 1
		res.xyz = ( fresnel.w * res.w ) * lerp( In.fog.xyz, a1 * fresnel.xyz, In.fog.w );
		res.w = fresnel.w;	
	#endif
	#if SIMPLE == 2
		res.xyz = 0;
		res.w = 1;
	#endif
       	return res;

}
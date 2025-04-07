//DBSWITCH SINGLE     0 1
//DBSWITCH SIMPLE     0 2
//DBSWITCH REFLECT    0 1
//DBSWITCH UNDERWATER 0 1



float4x4 modelViewMatrix       : register( c0 );
float4   offset                : register( c4 );
float4   eyePos                : register( c5 );
float4   fogColor              : register( c6 );
float4   fogParams             : register( c7 );
float4   time	               : register( c10 );



struct InputVS 
{
	float4 pos: POSITION0;
        float4 col: COLOR0;
	float4 tex : TEXCOORD0;

};

struct VSPS
{       
	float4 pos: POSITION;

	float3 dir: TEXCOORD0;
        float4 prr: TEXCOORD1;
        float4 prj: TEXCOORD2;
	float4 dyx: TEXCOORD3;
	
	float2 tex: TEXCOORD4;
	float2 tw0: TEXCOORD5;
	float2 tw1: TEXCOORD6;
	float2 tw2: TEXCOORD7;
	
		
	float4  fog: COLOR0;          
};



VSPS VertexMain( InputVS In )
{
	VSPS Out;
        float4 pos;
	pos.xy = In.tex.xy;
	pos.z = In.pos.x;
	pos.w = 1.0f;


	float3 viewVector = eyePos.xyz - pos.xyz;
        
	float d = sqrt( dot( viewVector, viewVector ) );
        
	float2 tw = pos.xy * 0.25f;
	Out.tw0 = tw + time.w * float2( +0.0h, +3.0h );
	Out.tw1 = ( tw + time.w * float2( -1.0h, -2.0h ) ) * 0.5f;
	Out.tw2 = ( tw + time.w * float2( +1.0h, -2.0h ) ) * 0.25f;
	
        pos.xyz += offset.xyz;
         
        Out.pos  = mul( modelViewMatrix, pos );

	Out.fog.w = ( fogParams.x + d * fogParams.y );
	Out.fog.xyz = fogColor.xyz;
	Out.tex.xy = In.tex.zw / 2048.0f;

	Out.dir.xyz = viewVector;
        
	float4 tx = Out.pos;
        Out.prj = float4( tx.w, tx.w, 0.0f, 0.0f ) + tx.xyzw * float4( -1.0f, -1.0f, 0.0f, 2.0f );
 	Out.prr = float4( tx.w, tx.w, 0.0f, 0.0f ) + tx.xyzw * float4( +1.0f, -1.0f, 0.0f, 2.0f );
 	
	Out.dyx = float4( modelViewMatrix[0][0], modelViewMatrix[1][0], modelViewMatrix[0][1], modelViewMatrix[1][1] );
	
        return Out;
}

sampler2D tex0 : register( s0 );
sampler2D tex1 : register( s1 );
sampler2D refl : register( s2 );
sampler2D hght : register( s3 );
sampler2D refr : register( s4 );



float4  specularColor: register( c5 );            
half4   waterColor1: register( c8 );            
half4   waterColor2: register( c9 );            


            

half4 PixelMain( VSPS In ) : COLOR 
{
  	half4 res = tex2D( hght, In.tex );
	half3 r = res.xyz * 2.0h - 1.0h;
	
	half3 b;

	b = half3( -1.0h, -1.0h, 0.0h ) + ( tex2D( tex1, In.tw0 ).xyz + tex2D( tex1, In.tw1 ).xyz + tex2D( tex1, In.tw2 ).xyz ) * half3( 0.66h, 0.66h, 0.33h );
	
	r.z = 1.0h;
	res.w = saturate( res.z * 2.0h - 1.0h );
	
	half4 fresnel = tex2D( tex0, float2( 0.5f, abs( dot( normalize( In.dir.xyz ), normalize( b ) ) ) ) );


	half4 col = lerp( waterColor1, waterColor2, res.w );
	
	float4 dif = float4( ( b.x * In.dyx.xy - b.y * In.dyx.zw ) * In.prj.w, 0.0f, 0.0f );

  	half3 a1 = lerp( col.xyz * b.zzz, tex2Dproj( refl, In.prj + dif ).xyz, col.w );

        half3 ar = tex2Dproj( refr, In.prr ).xyz;
        half4 sr = tex2Dproj( refr, In.prr - dif * 0.1 );

	ar = sr.w < 0.999h ? ar : sr.xyz;


	res.w = saturate( saturate( res.z * 8.0h - 4.0h ) / ( 0.01h + saturate( dot( r, normalize( In.dir.xyz ) ) ) ) );
	#if SIMPLE == 0
		res.xyz = res.w * lerp( In.fog.xyz, lerp( ar * fresnel.xyz, a1, fresnel.w ), In.fog.w );
	#endif
	#if SIMPLE == 1
		res.w *= ( fresnel.w * 0.5h + 0.5h );
		res.w = lerp( 1.0h, res.w, In.fog.w );
		res.xyz = res.w * lerp( In.fog.xyz, a1, In.fog.w );
			
	#endif
	#if SIMPLE == 2
		res.xyz = 0;
		res.w = 1;
	#endif
       	return res; 

}
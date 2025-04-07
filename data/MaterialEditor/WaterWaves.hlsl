//DBSWITCH DROP     0 1



float4x4 modelViewMatrix       : register( c0 );
float4   offset                : register( c4 );
float4   eyePos                : register( c5 );
float4   fogColor              : register( c6 );
float4   fogParams             : register( c7 );
float4   time	               : register( c9 );



struct InputVS 
{
	float4 pos: POSITION0;
        float4 col: COLOR0;
	float4 tex: TEXCOORD0;

};

struct VSPS
{       
	float4 pos: POSITION;
	
	float3 dir: TEXCOORD0;
        float4 prr: TEXCOORD1;
        float4 prj: TEXCOORD2;
	float4 dyx: TEXCOORD3;
        float2 tx1: TEXCOORD4;

#if DROP == 0
	
	float2 tx2: TEXCOORD5;
	float2 tx3: TEXCOORD6;

#endif
         
	half4 fog: COLOR0;

#if DROP == 1

	float2 tx2: TEXCOORD5;	  
	half3 trn: COLOR1;
	  
#endif
	        
};



VSPS VertexMain( InputVS In )
{
	VSPS Out;


	float3 viewVector = eyePos.xyz - In.pos.xyz;
        
	float d = sqrt( dot( viewVector, viewVector ) );
         
        Out.pos  = mul( modelViewMatrix, In.pos );

	Out.fog.w = ( fogParams.x + d * fogParams.y );
	Out.fog.xyz = fogColor.xyz;
	Out.dir = viewVector;
	Out.tx1.xy = In.tex.xy / 2048.0f;
	

	float t = In.tex.w / 2048.0f + time.y;

#if DROP == 0

	Out.tx2.xy = In.tex.xy / 2048.0f;
        Out.tx3.xy = In.tex.xy / 2048.0f;

	Out.tx2.y += t * 2.0f;
	Out.tx3.y -= t;
	
#endif

#if DROP == 1

	Out.tx2 = In.pos.xy * 0.125f;
        Out.trn = In.tex.w / 2048.0f;	
#endif
	
	       
	float4 tx = Out.pos;
        Out.prj = float4( tx.w, tx.w, 0.0f, 0.0f ) + tx.xyzw * float4( -1.0f, -1.0f, 0.0f, 2.0f );
 	Out.prr = float4( tx.w, tx.w, 0.0f, 0.0f ) + tx.xyzw * float4( +1.0f, -1.0f, 0.0f, 2.0f );
 	
	float2 dy = float2( modelViewMatrix[0][0], modelViewMatrix[1][0] );
	float2 dx = float2( modelViewMatrix[0][1], modelViewMatrix[1][1] );
	
	float4 wght = In.col * 2.0f - 1.0h;

	Out.dyx = float4( dy * wght.x + dx * wght.y,  dy * wght.z + dx * wght.w );
        Out.dir.x = ( viewVector.x * wght.x + viewVector.y * wght.y );
	Out.dir.y = ( viewVector.x * wght.z + viewVector.y * wght.w );
	
        return Out;
}

sampler2D tex0 : register( s0 );
sampler2D tex1 : register( s1 );
sampler2D refl : register( s2 );
sampler2D refr : register( s3 );
sampler2D fres : register( s4 );



float4  specularColor: register( c5 );            
half4   waterColor1: register( c8 );            
half4   waterColor2: register( c9 );            


            

half4 PixelMain( VSPS In ) : COLOR 
{
	half4 res;
	

#if DROP == 0

  	half4 b = half4( -1.0h, -1.0h, 0.0h, 0.0h ) 
	+ tex2D( tex0, In.tx2 ).xyzw * half4( 1.5h, 1.5h, 0.75h, 0.75h )
	+ tex2D( tex0, In.tx3 ).xyzw * half4( 0.5h, 0.5h, 0.25h, 0.25h );
	
	res.w = saturate( b.w * tex2D( tex1, In.tx1 ).w );


#endif

#if DROP == 1

	half4 b = half4( -1.0h, -1.0h, 0.0h, 0.0h ) 
	+ tex2D( tex0, In.tx1 ).xyzw * half4( 1.5h, 1.5h, 0.75h, 1.0h )
	+ tex2D( tex1, In.tx2 ).xyzw * half4( 0.5h, 0.5h, 0.25h, 0.0h );
	
	res.w = saturate( b.w * In.trn.y );

#endif

	
	half4 fresnel = tex2D( fres, float2( 0.5f, abs( dot( normalize( In.dir.xyz ), normalize( b.xyz ) ) ) ) );


#if DROP == 0
	half4 col = waterColor1;
#endif	


#if DROP == 1
	half4 col = waterColor2;
#endif	


	float4 dif = float4( ( b.x * In.dyx.xy + b.y * In.dyx.zw ) * In.prj.w, 0.0f, 0.0f );

	
  	half3 a1 = lerp( col.xyz * b.zzz, tex2Dproj( refl, In.prj + dif ).xyz, col.w );

        half3 ar = tex2Dproj( refr, In.prr ).xyz;
        half4 sr = tex2Dproj( refr, In.prr + dif * half4( 0.05h, -0.05h, 0.0h, 0.0h ) );

	ar = sr.w < 0.999h ? ar : sr.xyz;

	#if SIMPLE == 0
		res.xyz = res.w * lerp( In.fog.xyz, lerp( ar * fresnel.xyz, a1, fresnel.w ), In.fog.w );
	#endif
	#if SIMPLE == 1
		res.w *= ( fresnel.w * 0.5h + 0.5h );
		res.xyz = res.w * lerp( In.fog.xyz, a1, In.fog.w );
			
	#endif
	#if SIMPLE == 2
		res.xyz = 0;
		res.w = 1;
	#endif
       	return res; 



}
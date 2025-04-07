//DBSWITCH EFFECTUI 0 3
//DBSWITCH ALPHATEX 0 1
//DBSWITCH MULTFADE 0 2

struct VSPS
{       
    	float4 pos  : POSITION0;
   	float2 tex0: TEXCOORD0;
    	half4  col0: COLOR0;
	#if ALPHATEX == 1
	float2 tex1 : TEXCOORD1; 
	#endif
};

sampler2D tex0 : register( s0 );

#if ALPHATEX == 1
sampler2D tex1 : register( s1 );
#endif
 
struct INVS 
{
	float4 pos  : POSITION0;
	float4 col0 : COLOR0;	        
        float4 tex0 : TEXCOORD0;
	float4 tex1 : TEXCOORD1; 
	

};


float4 scrollTex0 : c0;
#if ALPHATEX == 1
float4 scrollTex1 : c1;
#endif



VSPS VertexMain( INVS In )
{
	VSPS Out;
	Out.pos = In.pos.xyzw * float4( 2.0f, -2.0f, 1.0f, 1.0f ) + float4( -1.0f, 1.0f, 0.0f, 0.0f );
	Out.col0 = In.col0;
        Out.tex0 = In.tex0;
	#if ALPHATEX == 1
	Out.tex1 = In.tex1;
	#endif

	return Out;
}



half4 PixelMain( VSPS In ) : COLOR 
{ 
    half4 res = tex2D( tex0, In.tex0 );
 #if ALPHATEX == 1
	res.w = tex2D( tex1, In.tex1 ).w;
 #endif

 
 #if EFFECTUI == 0
     
 #endif
 
 #if EFFECTUI == 1
	res = half4( 1.0h, 1.0h, 1.0h, res.x );
    
 #endif

 
 #if EFFECTUI == 2
    half3 gray = dot( half3( 1.0f/3.0,  1.0f/3.0, 1.0f/3.0 ), res.xyz );
	res = half4( gray, res.w );

 #endif

 half4 color = In.col0;
 #if EFFECTUI == 3
       color.xyz = lerp( half3( 1.0h, 1.0h, 1.0h ), color.xyz, res.w );
       
 #endif



 #if MULTFADE == 0
   res = res * color;	
	return res;
 #endif

 #if MULTFADE == 1
   res = lerp( half4( 1.0h, 1.0h, 1.0h, 1.0h ), half4( res.xyz * color, 1.0h ), color.w * res.w );	
	return res;
 #endif

 #if MULTFADE == 2
   res.xyz = res.xyz * color.xyz * color.w * res.w;
	return res;
 #endif



}


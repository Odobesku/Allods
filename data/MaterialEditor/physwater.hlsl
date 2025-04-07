//DBSWITCH BLUP 0 3



float4 time : register( c0 );  
  

struct InputVS 
{
	float2 pos0 : POSITION;
	float4 tex0 : TEXCOORD0;
	float2 tex1 : TEXCOORD1;
};


struct VSPS
{       
	float4 pos0 : POSITION;
        #if BLUP != 3
	float3 tex0 : TEXCOORD0; 
	#endif

	#if BLUP == 3 
	float2 tex0 : TEXCOORD0;
	float2 tex1 : TEXCOORD1; 
	float2 tex2 : TEXCOORD2; 
	float2 tex3 : TEXCOORD3; 
	float2 tex4 : TEXCOORD4; 
	
        #endif
};


VSPS VertexMain( InputVS In )
{
	VSPS Out;

        Out.pos0.xy = In.pos0.xy + In.tex0.zz * sin( time.xy * In.tex0.xy + In.tex0.ww );
	Out.pos0.zw = float2( 0.0f, 1.0f );
	Out.tex0.xy = In.tex1;
	
	#if BLUP != 3
	Out.tex0.z = 0.0f;
	#endif
	

#define V ( 1.0f / 256.0f )

	#if BLUP == 3
	Out.tex1 = Out.tex0 + float2( +V, 0.0f );
	Out.tex2 = Out.tex0 + float2( -V, 0.0f );
	Out.tex3 = Out.tex0 + float2( 0.0f, +V );
	Out.tex4 = Out.tex0 + float2( 0.0f, -V );
	
	#endif
	
        return Out;
}


sampler2D tex0 : register( s0 );
                             

half4 PixelMain( VSPS In ) : COLOR 
{ 
	#if BLUP != 3

	half d = dot( In.tex0, In.tex0 );
	//d = 1 - d * d * d;
	
	#if BLUP == 0
	return half4( d, 1.0h, 1.0h, 0.0h );
	#endif

	#if BLUP == 1
	return half4( 1.0h, d, 1.0h, 0.0h );
	#endif

	#if BLUP == 2
	return half4( 1.0h, 1.0h, d, 0.0h );
	#endif 
	#endif

	#if BLUP == 3
	half3 t0 = tex2D( tex0, In.tex0 ).xyz;
	
        half3 t1 = tex2D( tex0, In.tex1 ).xyz;
	half3 t2 = tex2D( tex0, In.tex2 ).xyz;
	half3 t3 = tex2D( tex0, In.tex3 ).xyz;
	half3 t4 = tex2D( tex0, In.tex4 ).xyz;
	
	half d1 = dot( t1 - t2, half3( 0.5h, 0.3h, 0.2h ) ); 
	half d2 = dot( t4 - t3, half3( 0.5h, 0.3h, 0.2h ) ); 
	half4 color;
	color.xyz = normalize( half3( d1, d2, 0.05h ) ) * 0.5h + half3( 0.5h, 0.5h, 0.5h );
	color.w = //0.25h - 
		dot( t0, half3( 0.5h, 0.3h, 0.2h ) );    

	return color;
	
	#endif
}

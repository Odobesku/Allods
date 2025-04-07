//DBSWITCH TRANSPRNT 0 2     
//DBSWITCH CUT 0 2     
//DBSWITCH SIMPLE 0 2     
               




float4     scle : register( c0 );
float4     cnst : register( c1 );
float4     matrices[3] : register( c16 );
float4     specialColor1 : register( c19 );
float4     specialColor2 : register( c20 );
float4     specialColor3 : register( c21 );


                     
struct InputVS 
{
	float4 pos0  : POSITION0;
	float4 tex0  : TEXCOORD0;
	
	#if TRANSPRNT == 2
	float4 col0 : COLOR0;
	#endif
	
        #if TRANSPRNT != 2
	float3 tn0  : COLOR0;
	float3 tn1  : COLOR1;
        #endif         

};

struct VSPS
{       
	float4 pos0 : POSITION;
       
	#if TRANSPRNT == 2
	float2 tex0 : TEXCOORD0;
        float2 tex1 : TEXCOORD1;	
	float4 col0 : COLOR0;
	float3 col1 : COLOR1;
	#endif
	
	#if TRANSPRNT != 2
	float4 tex0 : TEXCOORD0;
	float3 tn0  : TEXCOORD1;
	float3 tn1  : TEXCOORD2;
	float4 dir  : TEXCOORD3;
	float3 xyAlpha   : TEXCOORD4;
	#endif
 
};


VSPS VertexMain( InputVS In )
{
	VSPS Out;
        
	float4 a1 =  matrices[0];
        float4 a2 =  matrices[1];
        float4 a3 =  matrices[2];

     
        float3 pos;
        
	float4 inpos = In.pos0;

	#if TRANSPRNT == 2
	
	//inpos.xyz *= ( 1.0 - In.col0.y ) * 0.5f + 1.0f;	
	
	#endif


	
        pos.x = dot( a1, inpos );
        pos.y = dot( a2, inpos );
        pos.z = dot( a3, inpos );

	
	Out.pos0  = pos.xyzz * scle + cnst;
	

        #if TRANSPRNT == 2

	Out.col1 = specialColor3;
	
        Out.col0.xyz = lerp( specialColor1.xyz, specialColor2.xyz, In.col0.z );
	Out.col0.w = In.col0.w;
	Out.tex0.xy = In.tex0.xy / 4096.0f;
	Out.tex1.xy = In.tex0.zw / 2048.0f - float2( 1.0f, 1.0f );                             
	#endif

	#if TRANSPRNT != 2

	Out.tex0 = In.tex0 / 4096.0f;
	
	float3 tn0A = In.tn0 * 2.0f - 1.0f;
        float3 tn1A = In.tn1 * 2.0f - 1.0f;
  
        float3 tn0;
        tn0.x = dot( a1.xyz, tn0A );
        tn0.y = dot( a2.xyz, tn0A );
        tn0.z = dot( a3.xyz, tn0A );

	float3 tn1;
        tn1.x = dot( a1.xyz, tn1A );
        tn1.y = dot( a2.xyz, tn1A );
        tn1.z = dot( a3.xyz, tn1A );


	tn0 = normalize( tn0 );
	tn1 = normalize( tn1 );
	
	Out.tn0 = tn0;
	Out.tn1 = tn1;

	Out.xyAlpha.xy = Out.pos0.xy * float2( +0.5f, -0.5f ) / Out.pos0.w + ( 0.5f, 0.5f );
	Out.dir.w = saturate( 1.0f - sqrt( dot( pos, pos ) ) / 1000.0f );

	
	float4 anchor = specialColor1;
	float3 anchorDir = pos.xyz - anchor.xyz;
	float length = sqrt( dot( anchorDir, anchorDir ) );
	Out.xyAlpha.z = 0;

	#if CUT == 1
		Out.xyAlpha.z = length > anchor.w ? 0.0f : 1.0f;
		if( length < anchor.w )
		{
			pos = anchor + anchorDir * ( anchor.w / length );
		}
	
		Out.pos0  = pos.xyzz * scle + cnst;
	
	#endif

	#if CUT == 2
		Out.xyAlpha.z = anchor.w;
		Out.tex0.xy += anchor.xy;
	#endif
	
	
	Out.dir.xyz = normalize( pos );

	#endif
        return Out;
}



sampler2D tex0 : register( s0 );
sampler2D tex1 : register( s1 );




struct PSOut
{       
	half4 color: COLOR;
	       
};



half4  diffuse 	: register( c25 );
half4  contour  : register( c26 );
half4  ambient 	: register( c27 );
half4  halo 	: register( c28 );
half4  haloPar 	: register( c29 );



PSOut PixelMain( VSPS In )  
{
	PSOut Out;
        
        #if TRANSPRNT == 2
        half4  r = tex2D( tex0, In.tex0.xy );
	
	Out.color.xyz = ( 1.0h - r.www ) * In.col0.xyz + ( 1.0h - r.zzz ) * In.col1.xyz;

	half f = In.tex1.x * In.tex1.x + In.tex1.y * In.tex1.y;
	Out.color.w = ( In.col0.w - f * f - r.w ) * 1.5h;
	return Out; 

	#endif
	
	#if TRANSPRNT != 2

        half4  r = tex2D( tex0, In.tex0 ) * 1.4h + tex2D( tex0, In.tex0 * 2.0h ) * 0.6h;
	r.xyz = r.xyz - half3( 1.0h, 1.0h, 1.0h );
	
                
	#if CUT == 1
		if( In.xyAlpha.z > 0.5f )
		{
			discard;
		}
	#endif

	#if CUT == 2
		if( In.xyAlpha.z > r.w )
		{
			discard;
		}
	#endif




	half3 tn0 = In.tn0;
	half3 tn1 = In.tn1;
	half3 nor = normalize( cross( tn1, tn0 ) );
	

	half3 nrm;
	#if TRANSPRNT == 0	
	nrm = normalize( tn1 * r.x - tn0 * r.y + nor * r.z );
	#endif


	#if TRANSPRNT == 1 || SIMPLE == 2	
	nrm = nor;
	#endif





	half4 color;
	half cl = dot( nrm, In.dir.xyz );
	half cl2 = 1.0h + cl;
	
	color.xyz = ambient.xyz * r.w;
	
	cl = cl * cl;
	color.xyz += cl * diffuse.xyz;

	
	cl2 = cl2 * cl2;
	//cl2 = cl2 * cl2;
	
	half4 refl = tex2D( tex1, In.xyAlpha 

#if SIMPLE == 0
+ 0.1h * nrm.xy * ( In.dir.w ) 
#endif

);
	

	color.xyz += refl.xyz * contour * cl2; 


	color.w = 0.0h;

	#if TRANSPRNT == 0
	Out.color = lerp( refl, color, In.dir.w );
	Out.color.w = 0.0;
	return Out;
	#endif

	
	#if TRANSPRNT == 1
	half t = In.tex0.y * ( 1.0h - In.tex0.y * 4.0h ) * 16.0h;
	half m = dot( normalize( In.tn1 ), In.dir.xyz );
	m = abs( m );


	Out.color.xyz = halo.xyz;
	Out.color.w = In.dir.w * t * saturate( ( m - haloPar.x ) * ( haloPar.y - m ) * haloPar.z ) * r.w; 

	// saturate( - ( m + 0.1h ) * 10.0h * r.w ) + saturate( -( m - 0.1h ) * ( m - 0.4h ) * 100.0h * r.w ); 
	
	return Out;
	#endif

	#endif





}

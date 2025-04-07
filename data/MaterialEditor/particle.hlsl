//DBSWITCH DISTORT 0 1



float4     scle : register( c0 );
float4     cnst : register( c1 );
float4     mul : register( c2 );
float4     fogParams : register( c3 ); 


struct VS_INPUT_STRUCT 
{
	float4 pos: POSITION0;
        float4 tex: TEXCOORD0;
        float4 color: COLOR;  
        float2 scale: NORMAL;       
};

struct VS_OUTPUT_STRUCT
{
        //half3 fog: COLOR1;
       
	float4 pos: POSITION;
        float2 tex: TEXCOORD0;
	#if( DISTORT == 1 )
	float2 bbTex: TEXCOORD1;
	
	#endif
        half4 col: COLOR0;
        
};


VS_OUTPUT_STRUCT VertexMain(VS_INPUT_STRUCT In)
{
	VS_OUTPUT_STRUCT Out;
        
        float scale = In.tex.z * ( 6.28318531f / 65536.0f );
        //float mulfc = In.tex.w * ( 1.0f / 1024.0f );  
        float sinA = sin( scale );
        float cosA = cos( scale );

        float4 vec = float4( In.scale.x * cosA - In.scale.y * sinA,
                             In.scale.y * cosA + In.scale.x * sinA, 0.0f, 0.0f );
                               
 
        float4 particlePosition = In.pos  + vec;

	float d = sqrt(  dot( particlePosition.xyz, particlePosition.xyz ) );       
        float fog =  saturate( fogParams.x + d * fogParams.y );

        Out.pos = particlePosition.xyzz * scle + cnst;
	float2 nPos = Out.pos.zw + scle.zw * In.pos.ww;
	Out.pos.z = nPos.x / nPos.y * Out.pos.w; 
      
	Out.tex = In.tex.xy * ( 1.0f / 4096.0f );
	
	#if( DISTORT == 1 )
	Out.bbTex = Out.pos.xy / Out.pos.w * mul.zw + mul.xy;
	#endif

	Out.col = In.color.xyzw;
	
        Out.col *=  fog;

	return Out;
}

sampler2D tex0 : register( s0 );;


sampler2D tex1 : register( s1 );;



half4   fogColorP               : register( c3 );


half4 PixelMain
(
VS_OUTPUT_STRUCT In
) : COLOR 
{ 

	half4 r = tex2D( tex0, In.tex );
	#if( DISTORT == 1 )
	{
		r.xyz = r.xyz * 2.0h - 1.0h;
		r.xyz = tex2D( tex1, In.bbTex + r.xy * 0.05f ).xyz;
	}
	#endif
	
	//#if( DISTORT == 0 )
	{
		r.xyz = r.xyz * In.col.xyz;
        }
	//#endif
	r = r.w * half4( r.xyz + r.xyz, In.col.w ); 
	return r;//lerp( r,  half3( fogColorP, 1.0h ) * r.w,  In.fog.yyyy ); 
}







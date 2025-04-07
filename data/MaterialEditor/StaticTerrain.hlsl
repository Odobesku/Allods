//DBSWITCH CUTAWAY    0 1                                                           `
//DBSWITCH XYZTEX   0 1
//DBSWITCH FOGA   0 2
//DBSWITCH LAYERS   1 3
//DBSWITCH DECAL  0 1
//DBSWITCH SIMPLE  0 1
//DBSWITCH FX  0 1





float4x4 modelViewMatrix       : register( c0 );
float4   offset                : register( c4 );
float4   eyePos                : register( c5 );
float4   fogColor              : register( c6 );
float4   fogParams             : register( c7 );
float3   lightDir              : register( c8 );
float4   eyeSpecularColor      : register( c9 );



float4   decalPos              : register( c30 );
float4   decalCol              : register( c31 );
float4   decalMad              : register( c32 );
float4   decalRot              : register( c33 );



struct InputVS 
{
         
	float4 pos: POSITION0;
        float4 col: COLOR0;
	float4 tex : TEXCOORD0;
        
};

struct VSPS
{       
	float4 pos : POSITION;
	
	
	#if CUTAWAY == 1

        	float4 tex : TEXCOORD0; 

	#endif

	#if CUTAWAY == 0

        	float2 tex : TEXCOORD0; 

	#endif

	half4  fog  : COLOR0;

#if DECAL == 0
	float  fogHW  : FOG;
#endif
        

#if DECAL == 1

        float2 tex1 : TEXCOORD1;

#endif


#if DECAL == 0


	#if FOGA != 2

		#if XYZTEX == 0
			float2 txm : TEXCOORD1;
		#endif
	
		#if XYZTEX == 1
			half3  nrm : TEXCOORD3; 
			float3 txm : TEXCOORD1;
		#endif


		float2 tlm : TEXCOORD2;
	 
	
	#endif
#endif
        
};



VSPS VertexMain( InputVS In )
{
	VSPS Out;
         
        float4 pos;
        float3 nor = normalize( In.col.xyz * 2.0f - 1.0f );

	pos.xy = In.tex.xy;
	pos.z = In.pos.x;
	
	pos.w = 1.0f;

        float3 viewVector = eyePos.xyz - pos.xyz;
        
	float d = sqrt( dot( viewVector, viewVector ) );
        
        float3 tpos = pos;

        pos.xyz += offset.xyz;
         
        Out.pos  = mul( modelViewMatrix, pos );

	Out.tex = 0;
	#if CUTAWAY == 1

        	Out.tex.w = ( In.pos.x - In.pos.y ) * ( nor.z > 0.0f ? +1.0f : -1.0f ); 

	#endif

	viewVector = viewVector / d; 

        float3 halfVector = normalize( viewVector + lightDir );
        
	float eyeSpec = 1.0f - dot( nor, viewVector );  

	eyeSpec  = pow( eyeSpec, eyeSpecularColor.w );


	Out.fog = 0.0h;

	#if( SIMPLE == 0 )
	                           
                #if( FX == 0 )
		Out.fog.x = saturate( dot( halfVector, nor ) * 21.0f - 20.0f );
		#endif
		
		#if( FOGA == 1 )
		Out.fog.y = eyeSpec;
        	#endif
	#endif

	
	float fogInt = 0.0f;

	#if( FOGA == 0 )
		fogInt = fogParams.x + d * fogParams.y;
	#endif


	#if( FOGA == 1 )
		fogInt = fogParams.x + d * fogParams.y;
	#endif

	#if( FOGA == 2 )
		fogInt = 1.0h;
	#endif

#if DECAL == 0

	Out.fogHW = fogInt;

	#if( FOGA != 2 )
	
		Out.tex.xy = In.tex.zw / 2048.0f;
		
		#if( XYZTEX == 0 )
			Out.txm.xy = In.tex.xy / 8.0f;
		#endif

		#if( XYZTEX == 1 )
	
			float3 v = nor * nor;
			v = v * v;
			v = saturate( v - v * float3( 16.0f, 16.0f, 0.0f ) * v.z );
        		v /= dot( v, float3( 1.0f, 1.0f, 1.0f ) );

        		Out.nrm.xyz = v;
			Out.txm.xyz = pos.xyz / 8.0f;
		#endif

                Out.tlm.xy = In.tex.xy * float2( 254.0f / 256.0f / 256.0f, -254.0f / 256.0f / 256.0f ) + float2( 1.0f / 256.0f, 255.0f / 256.0f );
	
	#endif


#endif
	
#if DECAL == 1

	
       
	
	float scale = decalRot.x * ( 6.28318531f / 65536.0f );
        float sinA = sin( scale );
        float cosA = cos( scale );
        float3 dst =  decalPos.w * ( tpos.xyz - decalPos.xyz );

        float2 vec = float2( dst.x * cosA + dst.y * sinA,
                             dst.y * cosA - dst.x * sinA );
       
	Out.tex.xy = vec * 0.25f + 0.5f;

	vec = vec * 0.5f + 0.5f;

	Out.tex1 = decalMad.xy * vec + decalMad.zw;

	
	float alpha = saturate( 1.0f - 0.25f * dst.z * dst.z ) * ( fogParams.x + d * fogParams.y );
	Out.fog = decalCol * alpha;
#endif


        return Out;
}


                               

sampler2D tex0 : register( s0 );
sampler2D txlm : register( s1 );



sampler2D tex1 : register( s2 );
sampler2D tex2 : register( s3 );
sampler2D tex3 : register( s4 );



half4   ambientColorA           : register( c0 );
half4   ambientColorB           : register( c1 );
half4   diffuseColor            : register( c2 );
half4   fogColorP               : register( c3 );
half4   specularColor           : register( c4 );            
half4   contourColor           	: register( c6 );            
half4   pointLightColor         : register( c7 );            
half4   modulateColor         	: register( c10 );            



half4 PixelMain( VSPS In ) : COLOR 
{ 

                     
	half4 ret;

	#if CUTAWAY == 1

   	if( In.tex.w < 0.0f  )
   	{
		discard;
   	}

	#endif

#if( DECAL == 1 )
        
			
	half4 myTex = tex2D( txlm, In.tex.xy );
   	
  	half4 r = tex2D( tex0, In.tex1.xy );


   	half3 res = r.xyz * In.fog.xyz;
   	ret = ( r.w * myTex.w ) * half4( res, In.fog.w ); 
   	

#endif

#if( DECAL == 0 )
                     	
	#if( FOGA != 2 )
	
	half4 spl = tex2D( tex0, In.tex.xy ); 
	

    	half4 lm = tex2D( txlm, In.tlm.xy );



	#if( XYZTEX == 0 )


		#if( LAYERS > 0 )
		ret  = spl.xxxx * tex2D( tex1, In.txm.xy );
		#endif

		#if( LAYERS > 1 )
		ret += spl.yyyy * tex2D( tex2, In.txm.xy );
		#endif

		#if( LAYERS > 2 )
		ret += spl.zzzz * tex2D( tex3, In.txm.xy );
		#endif

	#endif

	#if( XYZTEX == 1 )

		float3 tx0 = In.txm.xyz;
   		float3 tx1 = In.txm.yzx;
    		float3 tx2 = In.txm.xzy;

		#if( LAYERS > 0 )
		ret  = spl.xxxx * ( tex2D( tex1, tx0 ) * In.nrm.z + tex2D( tex1, tx1 ) * In.nrm.x + tex2D( tex1, tx2 ) * In.nrm.y );
		#endif

		#if( LAYERS > 1 )
		ret += spl.yyyy * ( tex2D( tex2, tx0 ) * In.nrm.z + tex2D( tex2, tx1 ) * In.nrm.x + tex2D( tex2, tx2 ) * In.nrm.y );
		#endif

		#if( LAYERS > 2 )
		ret += spl.zzzz * ( tex2D( tex3, tx0 ) * In.nrm.z + tex2D( tex3, tx1 ) * In.nrm.x + tex2D( tex3, tx2 ) * In.nrm.y );
		#endif

		
	#endif

	ret.w = dot( spl.xyz, half3( 1.0h, 1.0h, 1.0h ) ) - ret.w;

	half alpha = ret.w * lm.y;
	
	#if( FX == 0 )
	ret = ( lm.x * ambientColorA + lm.y * diffuseColor + lm.z * pointLightColor + ambientColorB ) * ret;
	#endif

	#if( FX == 1 )
	half lrp = ret.w / ( dot( spl.xyz, half3( 1.0h, 1.0h, 1.0h ) ) + 0.1h );
	ret = lerp( ( lm.x * ambientColorA + lm.y * diffuseColor + lm.z * pointLightColor + ambientColorB ), modulateColor, lrp ) * ret;
	#endif

	#if( FOGA == 1 && SIMPLE == 0 )
		ret.xyz += In.fog.y * contourColor.xyz;
	#endif

	#if( SIMPLE == 0 && FX == 0 )
		ret.xyz += ( alpha * In.fog.x ) * specularColor.xyz;
	#endif
        

	#if( FOGA == 0 )

		//ret.xyz = ret.xyz * In.fog.w; 
	
	#endif

	#if( FOGA == 1 )

		//ret.xyz = lerp( fogColorP.xyz, ret.xyz, In.fog.w ); 
	
	#endif

	#endif

	#if( FOGA == 2 )
		ret = fogColorP; 
	#endif

#endif        

	return ret;

}
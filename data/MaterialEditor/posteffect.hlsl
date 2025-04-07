//DBSWITCH  BLUR 0 3
//DBSWITCH  OVERLAY 0 1
//DBSWITCH  CUSTOMFX 0 1
//DBSWITCH  CUSTOMADD 0 1
//DBSWITCH  CUSTOMMUL 0 1
//DBSWITCH  GRAYSCALE 0 1
//DBSWITCH  TRUEBLUR 0 1
//DBSWITCH  SHARPEN 0 1






float4 factor : register( c0 );  
float4 mat0 : register( c1 );
float4 mat1 : register( c2 );
float4 mat2 : register( c3 );
float4 trn0 : register( c4 );
float4 trn1 : register( c5 );
float4 offs : register( c6 );
float4 blnd : register( c7 );
float4 addw : register( c8 );
float4 tocl : register( c9 );
   




struct InputVS 
{
	float4 pos0 : POSITION0;
        float4 tex0 : TEXCOORD0; 
              
};

struct VSPS
{       
	float4 pos0 : POSITION;
        float2 tex0 : TEXCOORD0; 

#if BLUR == 3
	float3 tex1 : TEXCOORD1;
	
#endif


#if BLUR == 0 || BLUR == 3
	half4 col0 : COLOR0;
#endif

#if BLUR == 1
        float2 tex1 : TEXCOORD1;
        float2 tex2 : TEXCOORD2;
        float2 tex3 : TEXCOORD3;   
#endif


#if BLUR == 2
	half4 col0 : COLOR0;
	float2 tex1 : TEXCOORD1;
	float2 tex2 : TEXCOORD2;
#endif

#if GRAYSCALE == 1
       float4 tocl : TEXCOORD4;
#endif	 


};


VSPS VertexMain( InputVS In )
{
	VSPS Out;

        Out.pos0 = In.pos0 + float4( 0.0f, 0.0f, 0.99999f, 0.0f );
        float2 pos = In.pos0.xy * float2( 0.5f, -0.5f ) + float2( 0.5f, 0.5f );
              


#if GRAYSCALE == 1

     	Out.tocl = tocl;
#endif

#if BLUR == 2

	Out.tex1 = pos;	
	Out.tex2.xy = pos.xy * mat1.zw + mat1.xy;
#endif

#if BLUR == 0 || BLUR == 2

	Out.col0 = factor;
	Out.tex0.xy = pos.xy * mat0.zw + mat0.xy;

#endif


#if BLUR == 3

	Out.col0 = factor;
	Out.tex0.xy = pos.xy * mat0.zw + mat0.xy - float2( 0.005f, 0.005f );
        Out.tex1.xy = float2( dot( pos.xy, mat1.xy ) + mat1.w, dot( pos.xy, mat2.xy ) + mat2.w ); 
	Out.tex1.z = mat1.z; 
#endif

            

#if BLUR == 1
#define V ( offs.x ) 
        pos += float2( offs.y, offs.y );
        Out.tex0 = pos + float2( +V, -V );
        Out.tex1 = pos + float2( -V, -V );
        Out.tex2 = pos + float2( +V, +V );
        Out.tex3 = pos + float2( -V, +V );
#endif
 
        return Out;
}


sampler2D tex0 : register( s0 );
sampler2D tex1 : register( s1 );
sampler2D tex2 : register( s2 );

sampler2D texA : register( s3 );
sampler2D texM : register( s4 );


half4  diffadd 	: register( c19 );
half4  diffmul  : register( c20 );
      
half4  bluradd 	: register( c21 );
half4  blurmul  : register( c22 );

half4  overadd 	: register( c23 );
half4  overmul  : register( c24 );

                       

half4 PixelMain( VSPS In ) : COLOR 
{ 

#if BLUR == 3
	half4 p  =  tex2D( tex0, In.tex0 + tex2D( tex1, In.tex1.xy ).xy * In.tex1.z );
       	return half4( p.xyzw * In.col0  );

#endif



#if BLUR == 0
	half4 p  =  tex2D( tex0, In.tex0  );
       	return half4( p.xyzw * In.col0  );
#endif


#if BLUR == 1
     
    	half4 p = ( tex2D( tex0, In.tex0 ) + 
	tex2D( tex0, In.tex1 ) +
	tex2D( tex0, In.tex2 ) +
	tex2D( tex0, In.tex3 ) ) * 0.25h; 
    	return p;
#endif
             
            

#if BLUR == 2
	
	
	#if CUSTOMFX == 1
    		half2 off = ( tex2D( tex2, In.tex1 ).xy * 2.0h - 1.0h ) * 0.1h * In.col0.w;
	
    		half4 p = tex2D( tex0, In.tex0.xy + off );
		half4 b = tex2D( tex1, In.tex1.xy + off );
	
	#endif

	#if CUSTOMFX == 0

		half4 p = tex2D( tex0, In.tex0.xy );
		
		#if SHARPEN == 1

		
			
    		p = lerp( 
				tex2D( tex0, In.tex0.xy + diffmul.ww * float2( +1.0f, +1.0f ) ) * 0.25h +
				tex2D( tex0, In.tex0.xy + diffmul.ww * float2( +1.0f, -1.0f ) ) * 0.25h +
				tex2D( tex0, In.tex0.xy + diffmul.ww * float2( -1.0f, -1.0f ) ) * 0.25h +
				tex2D( tex0, In.tex0.xy + diffmul.ww * float2( -1.0f, +1.0f ) ) * 0.25h,
				p,
				diffadd.w );
				
			
		#endif

		half4 b = tex2D( tex1, In.tex1.xy );
		
	#endif

		
       	
       	half3 over = b.xyz < 0.5h ? b.xyz * p.xyz * 2 : ( 1.0h - 2 * ( 1.0h - b.xyz ) * ( 1.0h - p.xyz ) ); 
       	half3 diff = saturate( p.xyz * diffmul.xyz + diffadd.xyz ); 
       	half3 blur = saturate( b.xyz * blurmul.xyz + bluradd.xyz );	
       	over = saturate( over * overmul.xyz + overadd.xyz );
       	

	
	#if CUSTOMADD == 1
	diff += tex2D( texA, In.tex2.xy ) * In.col0;
	#endif

	#if CUSTOMMUL == 1
	diff *= ( 1.0h - In.col0.xyz + In.col0.xyz * tex2D( texM, In.tex2.xy ).xyz );
	#endif
	
	half4 toRet;
	
	#if OVERLAY == 1	 	
       		toRet = half4( diff + over, 0.0h  );
       	#endif
       	#if OVERLAY == 0	 	
       		toRet = half4( diff, 0.0h  );
       	#endif
	
	#if TRUEBLUR == 1
                toRet.xyz += blur;
	#endif

       	#if GRAYSCALE == 1	 	
       		toRet = lerp( toRet, In.tocl * dot( toRet.xyz, half3( 0.2h, 0.5h, 0.3h ) ), In.tocl.w );
       	#endif                                            


	return toRet;
#endif

    
}

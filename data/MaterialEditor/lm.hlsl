//DBSWITCH ANIMATION 0 1
//DBSWITCH TRANSPRNT 0 1
//DBSWITCH SCROLLRGB 0 1
//DBSWITCH SCROLLALP 0 1



#define LM  1


#ifndef VRTXCOLOR
#define VRTXCOLOR  0
#endif


#ifndef SELECTION
#define SELECTION  0
#endif

#ifndef ANIMATION
#define ANIMATION  0
#endif



#ifndef RFLECTION
#define RFLECTION  0
#endif



#ifndef SELFILLUM
#define SELFILLUM  0
#endif


float4     scle : register( c0 );
float4     cnst : register( c1 );
float4     fogParams : register( c2 ); 
float4     lightDir : register( c3 );


float4     contourColor : register( c4 );
float4     specularColor : register( c5 );
float4     pointLightColor : register( c6 );



float4     transparency : register( c7 );
float4     translateUV : register( c8 );


float4     contourFactor : register( c9 );
float4     specularFactor : register( c10 );


float4	   assorted : register( c12 );	
float4     shadowColor : register( c13 );
float4     madColor : register( c14 );
float4     selectionColor : register( c15 ); 
float4     matrices[210] : register( c16 );

                     
struct InputVS 
{
	float4 pos0  : POSITION0;
        float4 tex0  : TEXCOORD0;
        float3 nor0  : NORMAL;
        float4 weight: BLENDWEIGHT0;
        int4   ind   : BLENDINDICES0;  
#if( VRTXCOLOR != 0 )
        float4 col0  : COLOR0;

#endif
#if( AMBNCOLOR != 0 )
        float4 col1  : COLOR1;

#endif
                 

};

struct VSPS
{       
	float4 pos : POSITION;
        float4 tex0: TEXCOORD0;
        float4 diff: COLOR0;
        float  fog : FOG; 


#if( REFCOLORS == 1 )

        float3 eyeColor: COLOR1; 
	float3 specColor: TEXCOORD3; 

#endif

#if( RFLECTION == 1 || REFCOLORS == 1 )


        float2 tex1: TEXCOORD1; 

#endif

#if( SCROLLRGB + SCROLLALP == 1 )

        float2 tex2: TEXCOORD2; 

#endif


#if( SELECTION == 1 )

	float4 sel : TEXCOORD4;

#endif

#if( SELFILLUM == 1 && VRTXCOLOR == 2 && FXTEXTURE == 1 )
        float3 vtxColor : TEXCOORD5;
#endif

       


};


VSPS VertexMain( InputVS In )
{
	VSPS Out;
	Out.diff = 1.0f;
	float3 normal = In.nor0 * 2.0f - 1.0f;
          
#if( ANIMATION == 1 )
        float4 a1 =  matrices[ In.ind.x + 0 ] * In.weight.xxxx +
                             matrices[ In.ind.y + 0 ] * In.weight.yyyy +
                             matrices[ In.ind.z + 0 ] * In.weight.zzzz +
                             matrices[ In.ind.w + 0 ] * In.weight.wwww;
                             
        float4 a2 =  matrices[ In.ind.x + 1 ] * In.weight.xxxx +
                             matrices[ In.ind.y + 1 ] * In.weight.yyyy +
                             matrices[ In.ind.z + 1 ] * In.weight.zzzz +
                             matrices[ In.ind.w + 1 ] * In.weight.wwww;
                             
                
        float4 a3 =  matrices[ In.ind.x + 2 ] * In.weight.xxxx +
                             matrices[ In.ind.y + 2 ] * In.weight.yyyy +
                             matrices[ In.ind.z + 2 ] * In.weight.zzzz + 
                             matrices[ In.ind.w + 2 ] * In.weight.wwww;
                             
        float3 pos;
        
        pos.x = dot( a1, In.pos0 );
        pos.y = dot( a2, In.pos0 );
        pos.z = dot( a3, In.pos0 );

       
        float3 nor;
        nor.x = dot( a1.xyz, normal );
        nor.y = dot( a2.xyz, normal );
        nor.z = dot( a3.xyz, normal );

        nor = normalize( nor );  

#endif
#if( ANIMATION == 0 )
        float4 a1 =  matrices[0];
        float4 a2 =  matrices[1];
        float4 a3 =  matrices[2];  
     
        float3 pos;
        
        pos.x = dot( a1, In.pos0 );
        pos.y = dot( a2, In.pos0 );
        pos.z = dot( a3, In.pos0 );

       
        float3 nor;
        nor.x = dot( a1.xyz, normal );
        nor.y = dot( a2.xyz, normal );
        nor.z = dot( a3.xyz, normal );


	nor = normalize( nor );
#endif



float ambientTerm = saturate( dot( lightDir.xyz, nor ) );

#if( AMBNCOLOR == 0 )

        Out.diff.xyz = ( ambientTerm  * madColor.xyz + shadowColor.xyz ) * 0.5f;

#endif


#if( AMBNCOLOR == 1 )

        Out.diff.xyz = ( ambientTerm * madColor.xyz * In.col1.xxx + shadowColor.xyz * In.col1.yyy + pointLightColor.xyz * In.col1.zzz ) * 0.5f;

#endif
	
	Out.diff.w = transparency.w * 0.5f;

#if( FXTEXTURE == 0 && SELFILLUM == 1 )
	
       Out.diff.xyz = float3( 0.5f, 0.5f, 0.5f );

#endif



#if( VRTXCOLOR == 1 )

     	Out.diff.xyz = Out.diff.xyz * In.col0.www  + In.col0.xyz;
	
#endif



#if( VRTXCOLOR == 2 )

     	Out.diff.xyz = Out.diff.xyz * In.col0.xyz * 2.0f;
	Out.diff.w = Out.diff.w * In.col0.w;	

     	#if( SELFILLUM == 1 && FXTEXTURE == 1 )

		Out.vtxColor.xyz = In.col0.xyz * 2.0f;
   	#endif	
#endif

                                                      
        float d = sqrt(  dot( pos.xyz, pos.xyz ) );       
        Out.fog =  assorted.x + d * assorted.y;
        Out.pos  = pos.xyzz * scle + cnst;
	Out.pos.zw += translateUV.zw;
        
        float3 dir = pos.xyz / d;      


#if( REFCOLORS == 1 )

	Out.specColor = specularColor.xyz * specularFactor.w + specularFactor.xyz;
	Out.eyeColor = contourColor.xyz * contourFactor.w + contourFactor.xyz;

#endif


                                                     
#if( RFLECTION == 1 || REFCOLORS == 1 )

	
	float3 nr1 = normalize( cross( dir, float3( 1.0f, 0.0f, 0.0f ) ) );
        float3 nr2 = cross( dir, nr1 );
	
        Out.tex1 = float2( dot( nr1, nor ), dot( nr2, nor ) ) * 0.5f + float2( 0.5f, 0.5f );
	
#endif     
         


#if( SCROLLRGB == 0 && SCROLLALP == 0 )        
        Out.tex0 = In.tex0 * float4( 1.0f, -1.0f, 1.0f, 1.0f ) + float4( 0.0f, 1.0f, 0.0f, 0.0f );
#endif


#if( SCROLLRGB == 1 && SCROLLALP == 0 )        
        Out.tex0 = translateUV + In.tex0 * float4( 1.0f, -1.0f, 1.0f, 1.0f ) + float4( 0.0f, 1.0f, 0.0f, 0.0f );
	Out.tex2 = In.tex0 * float4( 1.0f, -1.0f, 1.0f, 1.0f ) + float4( 0.0f, 1.0f, 0.0f, 0.0f );
#endif


#if( SCROLLRGB == 0 && SCROLLALP == 1 )        
        Out.tex0 = In.tex0 * float4( 1.0f, -1.0f, 1.0f, 1.0f ) + float4( 0.0f, 1.0f, 0.0f, 0.0f );
	Out.tex2 = translateUV + In.tex0 * float4( 1.0f, -1.0f, 1.0f, 1.0f ) + float4( 0.0f, 1.0f, 0.0f, 0.0f );
#endif


#if( SCROLLRGB == 1 && SCROLLALP == 1 )        
        Out.tex0 = translateUV + In.tex0 * float4( 1.0f, -1.0f, 1.0f, 1.0f ) + float4( 0.0f, 1.0f, 0.0f, 0.0f );
#endif



        Out.diff.xyz = Out.diff.xyz * transparency.xyz; 


#if( LM == 1 )
	Out.fog = 1;
        Out.diff = Out.pos.zzzz - 0.01f;
#endif


#if( SELECTION == 1 )


       Out.sel = selectionColor;
#endif

	
        return Out;
}





sampler2D tex0c : register( s0 );
sampler2D tex0a : register( s1 );
sampler2D tex1 : register( s2 );
sampler2D tex2 : register( s3 );
sampler2D tex3 : register( s4 );

      
half4 PixelMain( VSPS In ) : COLOR 
{ 


half4 dif = tex2D( tex0c, In.tex0 );

#if( SCROLLRGB + SCROLLALP == 1 )

   	dif.w = tex2D( tex0a, In.tex2 ).w;

#endif


#if( LM == 1 )

	#if( TRANSPRNT == 0  )
    		if( dif. a < 0.75h )
    		{
     			discard;
    		};
	#endif

	#if( TRANSPRNT == 1 )
     		discard;
	#endif

    	return In.diff;  

#endif

#if( TRANSPRNT == 0  )
    
	dif.w = dif.w < 0.5h ? 0.0h : 1.0h;
#endif

        
half4 res = dif;
  
#if( FXTEXTURE == 1 )
  	half4 msk = tex2D( tex1, In.tex0 );
#endif
        

#if( RFLECTION == 1 )
    	half4 rflect = tex2D( tex2, In.tex1 );	
    	res.xyz += rflect.xyz 
	#if( FXTEXTURE == 1 )
		* msk.xxx
	#endif
	;    
    	#if( TRANSPRNT == 1 )
         	res.w *= rflect.w; 
    	#endif	
#endif
      

half3 ocolor = res.xyz;
res = res * In.diff * 2.0h;	

#if( SELFILLUM == 1 && FXTEXTURE == 1 )
    	res.xyz = lerp( res.xyz, ocolor
	#if( VRTXCOLOR == 2 )
		* In.vtxColor.xyz
	#endif
	, msk.y );
#endif
    
    

#if( REFCOLORS == 1 )

    	half4 spec = tex2D( tex3, In.tex1 );

    	res.xyz += In.eyeColor.xyz 
	#if( FXTEXTURE == 1 )
		* msk.zzz 
	#endif
	* spec.xxx; 

    	res.xyz += In.specColor.xyz 
	#if( FXTEXTURE == 1 )
	* msk.www 
	#endif
	* spec.yyy; 
#endif



   
#if( SELECTION == 0 )
    	return res; 
#endif


#if( SELECTION == 1 )
	res.xyz = lerp( res.xyz, In.sel.xyz, In.sel.w );
    	return res; 
#endif
}


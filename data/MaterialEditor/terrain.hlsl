//DBSWITCH LAYERS 1 4
//DBSWITCH FX    0 1
//DBSWITCH MORPH    0 1
//DBSWITCH GRID     0 1
//DBSWITCH LM       0 1
//DBSWITCH SHADOW   0 1
//DBSWITCH COLORING   0 1
//DBSWITCH SKIPFOG    0 1
//DBSWITCH CUTAWAY    0 1
//DBSWITCH DECAL    0 1
//DBSWITCH XYZTEX   0 1



#ifndef LM
#define LM  0
#endif

#ifndef COLORING
#define COLORING  0
#endif

#ifndef XYZTEX
#define XYZTEX  0
#endif


#ifndef SHADOW
#define SHADOW  0
#endif


#ifndef GRID
#define GRID  0
#endif

#ifndef MORPH
#define MORPH  0
#endif

#ifndef LAYERS
#define LAYERS  4
#endif

#ifndef LOD
#define LOD  1
#endif

#ifndef DECAL
#define DECAL  0
#endif


//#include "constants.hlsl"





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



float4   decalPos              : register( c30 );
float4   decalCol              : register( c31 );
float4   decalMad              : register( c32 );
float4   decalRot              : register( c33 );



struct InputVS 
{
         
	float4 pos0: POSITION0;
        float4 pos1: POSITION1;
	float4 pos2: POSITION2;

        float4 col0: COLOR0;
        float4 col1: COLOR1;
        float4 tex0: TEXCOORD0; 
        
};

struct VSPS
{       
	float4 pos0 : POSITION;
        half4  fog  : COLOR0; 
        
        
#if DECAL == 1
        float3 tex0 : TEXCOORD0;
        float4 tex1 : TEXCOORD1;
#endif

#if DECAL == 0
        float3 tex0 : TEXCOORD0;
	float3 tex1 : TEXCOORD1;
        float2 tex2 : TEXCOORD2;
        float4 col1 : TEXCOORD3;
        half4 nrml : TEXCOORD4;
#endif
        
 
};



VSPS VertexMain( InputVS In )
{
	VSPS Out;
         
        //Out.col0   = In.col0; 
        float3 viewVector, halfVector;
        float4 pos;
        float4 tpos; 
        float  morph = 1;
	float diff;
       
        
	pos.w = 0.0f; 

#if MORPH == 1
        float4 xyxy = In.tex0;
        morph = dot( xyxy, morphFactor );
 
        pos.xy = lerp( In.pos1.zw, In.pos1.xy, morph );
        pos.z  = lerp( In.pos0.y, In.pos0.x, morph );
#if CUTAWAY == 1
        pos.w  = lerp( In.pos2.y, In.pos2.x, morph );
#endif
        float3 nor = lerp( In.col1.xyz, In.col0.xyz, morph ) * 2.0f - 1.0f;    
#endif

#if MORPH == 0
        pos.xy = In.pos1.xy;
        pos.z  = In.pos0.x;
#if CUTAWAY == 1
        pos.w  = In.pos2.x;           

#endif
        float3 nor = In.col0.xyz * 2.0f - 1.0f;    
#endif

	nor *= -eyePos.w;

	diff = pos.w - pos.z;
	pos.w = 1.0f;
        tpos = pos;
        
        viewVector = eyePos.xyz - pos.xyz;
        
        pos.xyz += offset.xyz;
         
        float d = sqrt( dot( viewVector, viewVector ) );
        Out.fog = float4( fogColor.xyz, fogParams.x + d * fogParams.y );
        Out.pos0  = mul( modelViewMatrix, pos );

#if DECAL == 1

	float scale = decalRot.x * ( 6.28318531f / 65536.0f );
        float sinA = sin( scale );
        float cosA = cos( scale );

       	float3 dst =  decalPos.w * ( tpos.xyz - decalPos.xyz );

        float2 vec = float2( dst.x * cosA + dst.y * sinA,
                             dst.y * cosA - dst.x * sinA );
       
       	Out.tex0.xy = vec * 0.5f + 0.5f;
	Out.tex0.z = diff * eyePos.w;
	Out.tex1 = decalMad;
	float alpha = saturate( 1.0f - 0.25f * dst.z * dst.z );


	Out.fog = decalCol * alpha;
	
#endif

        
#if DECAL == 0
         
        viewVector *= 1.0f/ d; 
        halfVector = normalize( viewVector + lightDir );
        
        float eyeSpec;
        float dirSpec;
        float dirDiff;

        eyeSpec = dot( viewVector, nor );

        dirSpec = dot( halfVector, nor );
        dirDiff = dot( lightDir, nor );
        
        eyeSpec = max( 0.0f, eyeSpec );
        dirSpec = max( 0.0f, dirSpec );
        
        eyeSpec = 1.0f - eyeSpec;  
        eyeSpec  = pow( eyeSpec, eyeSpecularColor.w );

	
        
        dirSpec  = max( dirSpec * 21.0f - 20.0f, 0.0f );

        
        Out.col1  = eyeSpecularColor * eyeSpec;

#if LM == 1
        Out.col1  = Out.pos0.zzzz;
#endif
        float4 r   = tpos * (-0.125f);
        Out.tex0   = r.xyz;
        Out.tex1.xy   = tpos.yx * texParams.xy + texParams.wz;
        
        float3 v = nor * nor;
        v = v * v;
	v = saturate( v - v * float3( 24.0f, 24.0f, 0.0f ) * v.z );
        v /= dot( v, float3( 1.0f, 1.0f, 1.0f ) );

        Out.nrml = half4( v, dirSpec );

#if LOD == 1
        Out.nrml = half4( v, dirSpec );          
#endif

#if LOD == 0
        Out.nrml = half4( v, 0.0f );            
#endif

    
#if GRID == 1

        Out.col1 = gridColor.xyzw;
        Out.pos0 -= Out.pos0.wwww * float4( 0.0f, 0.0f, 0.000001f, 0.0f ) + float4( 0.0f, 0.0f, 0.0001f, 0.0f );  
#endif

#if SHADOW == 1
        Out.col1  = dirDiffuseMin + dirDiffuseMad * dirDiff;
        Out.col1  = float4( Out.col1.xyz, 1.0f );
        Out.tex0  = mul( texMatrix, pos ) * float3( 0.5f, -0.5f, 1.0f ) + float3( 0.5f, 0.5f, 0.0f);
#endif

        Out.tex2 = tpos * float2( 254.0f / 256.0f / 256.0f, -254.0f / 256.0f / 256.0f ) + float2( 1.0f / 256.0f, 255.0f / 256.0f );


        Out.tex1.z = diff * eyePos.w; 
#endif
	
        return Out;
}




sampler2D tex0 : register( s0 );
sampler2D tex1 : register( s1 );
sampler2D tex2 : register( s2 );
sampler2D tex3 : register( s3 );
sampler2D tex4 : register( s4 );
sampler2D tex5 : register( s5 );


half4   ambientColorA           : register( c0 );
half4   ambientColorB           : register( c1 );
half4   diffuseColor            : register( c2 );
half4   fogColorP               : register( c3 );
half4   specularColor           : register( c4 );            
half4   pointLightColor         : register( c7 );            
half4   modulateColor         	: register( c10 );            


half4 PixelMain( VSPS In ) : COLOR 
{ 

#if DECAL == 1

   #if CUTAWAY == 1

   if( In.tex0.z < 0.0f  )
   {
	discard;
   }

   #endif


   float2 myTex = In.tex0.xy;
   if( myTex.x < 0.0f || myTex.y < 0.0f || myTex.x > 1.0f || myTex.y > 1.0f  )
   {
	discard;
   }
   half4 r = tex2D( tex0, myTex * In.tex1.xy + In.tex1.zw );
   half3 res = r.xyz * In.fog.xyz;
   return r.w * half4( res, In.fog.w ); 
        	
#endif

#if DECAL == 0


#if GRID == 1

    return In.col1;  

#endif


#if CUTAWAY == 1

   if( In.tex1.z < 0.0f  )
   {
	discard;
   }

#endif



#if SHADOW == 1

   float4 resColor; 
   float3 coord = In.tex0.xyz;
   coord.z -= 0.010f;  
   resColor = ( tex2D( tex5, coord ).x < coord.z ) ? 
       half4( 0.0h, 0.0h, 0.0h, 0.0h ) : In.col1; 
     
     
      
   return resColor;
#endif



#if LM == 1

    return In.col1;  

#endif






    //float2 tx3 = In.tex2.xy;
    
    float3 tx0 = In.tex0.xyz;
    float3 tx1 = In.tex0.yzx;
    float3 tx2 = In.tex0.xzy;


#if COLORING == 0
    half4 lm = tex2D( tex5, In.tex2 );
#endif

#if COLORING == 1
    half4 lm = tex2D( tex5, In.tex2 * ( 256.0f / 254.0f ) - ( 1.0f / 256.0f )  );
#endif


    half4 weight = tex2D( tex4, In.tex1 ); 

    
#if CUTAWAY == 1

	/*
    if( weight.z > 0.0f )
    {
	discard;
    }     */
#endif


       
   
#if XYZTEX == 0 
    half4 r0 = tex2D( tex0, tx0 );
    half4 r1 = tex2D( tex1, tx0 );
    half4 r2 = tex2D( tex2, tx0 );
    half4 r3 = tex2D( tex3, tx0 );
#endif
#if XYZTEX == 1 
    half4 r0 = tex2D( tex0, tx0 ) * In.nrml.z + tex2D( tex0, tx1 ) * In.nrml.x + tex2D( tex0, tx2 ) * In.nrml.y;
    half4 r1 = tex2D( tex1, tx0 ) * In.nrml.z + tex2D( tex1, tx1 ) * In.nrml.x + tex2D( tex1, tx2 ) * In.nrml.y;
    half4 r2 = tex2D( tex2, tx0 ) * In.nrml.z + tex2D( tex2, tx1 ) * In.nrml.x + tex2D( tex2, tx2 ) * In.nrml.y;
    half4 r3 = tex2D( tex3, tx0 ) * In.nrml.z + tex2D( tex3, tx1 ) * In.nrml.x + tex2D( tex3, tx2 ) * In.nrml.y;
#endif

    half4 res = r0 * weight.z
#if LAYERS > 1
    + weight.y * r1 
#if LAYERS > 2
    + weight.x * r2
#if LAYERS > 3
    + weight.w * r3 
#endif
#endif
#endif    
    ;


res.w = dot( weight.xyzw, half4( 1.0h, 1.0h, 1.0h, 1.0h ) ) - res.w;


half4 r;


#if( FX == 0 )
half4 color = ( lm.x * ambientColorA + lm.y * diffuseColor + lm.z * pointLightColor + ambientColorB );
#endif

#if( FX == 1 )
half lrp = res.w / ( dot( weight.xyzw, half4( 1.0h, 1.0h, 1.0h, 1.0h ) ) + 0.1h );
half4 color = lerp( ( lm.x * ambientColorA + lm.y * diffuseColor + lm.z * pointLightColor + ambientColorB ), modulateColor, lrp );
#endif



r = res * color


#if( LOD == 1 && FX == 0 )
+ lm.y * In.nrml.w * res.wwww * specularColor
#endif 
;

half fw = dot( weight, half4( 1.0h, 1.0h, 1.0h, 1.0h ) );

#if COLORING == 1

r = lerp( res, lm * fw, lm.w );

#endif                    


#if SKIPFOG == 0
r.xyz += In.col1.xyz;
half4 ret = lerp( In.fog, r, In.fog.w ); 
#endif


#if SKIPFOG == 1
half4 ret = r * In.fog.w; 
#endif


return half4( ret.xyz, 0.0f );

#endif
}
//DBSWITCH ANIMATION 0 1
//DBSWITCH TRANSPRNT 0 1


float4     scle : register( c0 );
float4     cnst : register( c1 );
float4     fogParams : register( c2 ); 
float4     lightDir : register( c3 );


float4     transparency : register( c7 );
float4     translateUV : register( c8 );


float4	   assorted : register( c12 );	
float4     shadowColor : register( c13 );
float4     madColor : register( c14 );
float4     selectionColor : register( c15 ); 
float4     matrices[210] : register( c16 );
float4	   skyLo0 : register( c240 );
float4	   skyHi0 : register( c241 );
float4	   sunLo0 : register( c242 );
float4	   sunHi0 : register( c243 );
float4	   skyLo1 : register( c244 );
float4	   skyHi1 : register( c245 );
float4	   sunLo1 : register( c246 );
float4	   sunHi1 : register( c247 );
float4	   skyLo2 : register( c248 );
float4	   skyHi2 : register( c249 );
float4	   sunLo2 : register( c250 );
float4	   sunHi2 : register( c251 );
	


                     
struct InputVS 
{
	float4 pos0  : POSITION0;
        float4 tex0  : TEXCOORD0;
        float3 nor0  : NORMAL;
        float4 weight: BLENDWEIGHT0;
        int4   ind   : BLENDINDICES0;  
                 
};

struct VSPS
{       
	float4 pos : POSITION;
        float4 tex0: TEXCOORD0;
        half4 diff: COLOR0;
        
	half3  c0 : TEXCOORD1;	
	half3  c1 : TEXCOORD2;
	half3  c2 : TEXCOORD3;
	
	
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



	Out.pos  = pos.xyzz * scle + cnst;

	float3 locator = normalize( pos );
	float3 dir = dot( lightDir, locator );

	float3 lo0 = lerp( skyLo0.xyz, sunLo0.xyz, saturate( dir * sunLo0.w + skyLo0.w ) );
	float3 lo1 = lerp( skyLo1.xyz, sunLo1.xyz, saturate( dir * sunLo1.w + skyLo1.w ) );
	float3 lo2 = lerp( skyLo2.xyz, sunLo2.xyz, saturate( dir * sunLo2.w + skyLo2.w ) );
	

	float3 hi0 = lerp( skyHi0.xyz, sunHi0.xyz, saturate( dir * sunHi0.w + skyHi0.w ) );
	float3 hi1 = lerp( skyHi1.xyz, sunHi1.xyz, saturate( dir * sunHi1.w + skyHi1.w ) );
	float3 hi2 = lerp( skyHi2.xyz, sunHi2.xyz, saturate( dir * sunHi2.w + skyHi2.w ) );
	
	

	
	Out.diff = transparency;
	
	Out.c0 = lerp( lo0, hi0, In.tex0.y );
        Out.c1 = lerp( lo1, hi1, In.tex0.y );
	Out.c2 = lerp( lo2, hi2, In.tex0.y );


        Out.tex0 = In.tex0 * float4( 1.0f, -1.0f, 1.0f, 1.0f ) + float4( 0.0f, 1.0f, 0.0f, 0.0f );
	
        return Out;
}






sampler2D tex0c : register( s0 );


      
half4 PixelMain( VSPS In ) : COLOR 
{ 
half4 dif = tex2D( tex0c, In.tex0 );


half4 r0, r1, r2;

r0.xyz = In.c0;
r0.w = dif.x;

r1.xyz = In.c1;
r1.w = dif.y;

r2.xyz = In.c2;
r2.w = dif.z;
                           
half4 res;

res.xyz = lerp( lerp( r0.xyz, r1.xyz, r1.w ), r2.xyz, r2.w );   

res.w = 1.0h - ( 1.0h - r0.w ) * ( 1.0h - r1.w ) * ( 1.0h - r2.w );
res.w *= dif.w;
res *= In.diff;                             
return res;
}


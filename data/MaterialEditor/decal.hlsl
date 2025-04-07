

float4     scle : register( c0 );
float4     cnst : register( c1 );
float4     matrices[210] : register( c16 );

float4     translateUV : register( c8 );


float4   decalPos              : register( c30 );
float4   decalCol              : register( c31 );
float4   decalMad              : register( c32 );
float4   decalRot              : register( c33 );

                     
struct InputVS 
{
	float4 pos0  : POSITION0;
                 

};

struct VSPS
{       
	float4 pos  : POSITION;
	float4 tex0 : TEXCOORD0;
        float2 tex1 : TEXCOORD1;
        half4  col  : COLOR0; 
        
};


VSPS VertexMain( InputVS In )
{
	VSPS Out;
          
        float4 a1 =  matrices[0];
        float4 a2 =  matrices[1];
        float4 a3 =  matrices[2];  
     
        float3 pos;
        
        pos.x = dot( a1, In.pos0 );
        pos.y = dot( a2, In.pos0 );
        pos.z = dot( a3, In.pos0 );

       
        Out.pos  = pos.xyzz * scle + cnst;
	
	float scale = decalRot.w * ( 6.28318531f / 65536.0f );
        float sinA = sin( scale );
        float cosA = cos( scale );
        float3 dst =  decalRot.xyz * ( In.pos0.xyz - decalPos.xyz );

        float3 vec = float3( dst.x * cosA + dst.y * sinA,
                             dst.y * cosA - dst.x * sinA, 0.0f  );
       

	Out.tex0.xy = vec * 0.25f + 0.5f;

	vec = vec * 0.5f + 0.5f;

	Out.tex1 = decalMad.xy * vec + decalMad.zw;
	
	Out.tex0.zw = dst.zz;

	Out.col = decalCol;


        return Out;
}


sampler2D tex0 : register( s0 );
sampler2D txlm : register( s1 );




half4 PixelMain( VSPS In ) : COLOR 
{

	half4 myTex = tex2D( txlm, In.tex0.xy );
   	
  	half4 r = tex2D( tex0, In.tex1.xy );


   	half3 res = r.xyz * In.col.xyz;
   	r =  ( r.w * myTex.w * saturate( 1.0f - In.tex0.w * In.tex0.w ) ) * half4( res, In.col.w ); 
        r.w += dot( r.xyz, r.xyz ) > 0.0f ? 0.01f  : 0.0f; 
	return r;      
 
}

//DBSWITCH ANIMATION 0 1
//DBSWITCH ALPHAMTRL 0 1




float4     scle : register( c0 );
float4     cnst : register( c1 );
float4     matrices[210] : register( c16 );

                     
struct InputVS 
{
	float4 pos0  : POSITION0;
        float4 tex0  : TEXCOORD0;
        float4 weight: BLENDWEIGHT0;
        int4   ind   : BLENDINDICES0;  

};

struct VSPS
{       
	float4 pos : POSITION;

#if( ALPHAMTRL == 1 )
        float4 tex0: TEXCOORD0;
#endif
        float  fog : FOG; 

};


VSPS VertexMain( InputVS In )
{
	VSPS Out;
          
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


#endif
#if( ANIMATION == 0 )
        float4 a1 =  matrices[0];
        float4 a2 =  matrices[1];
        float4 a3 =  matrices[2];  
     
        float3 pos;
        
        pos.x = dot( a1, In.pos0 );
        pos.y = dot( a2, In.pos0 );
        pos.z = dot( a3, In.pos0 );

#endif

        Out.pos  = pos.xyzz * scle + cnst;

#if( ALPHAMTRL == 1 )

        Out.tex0 = In.tex0 * float4( 1.0f, -1.0f, 1.0f, 1.0f ) + float4( 0.0f, 1.0f, 0.0f, 0.0f );
	
#endif
	Out.fog = 0;        
	return Out;
}





sampler2D tex0c : register( s0 );
      
half4 PixelMain( VSPS In ) : COLOR 
{
half4 dif = half4( 1.0h, 1.0h, 1.0h, 1.0h ); 
#if( ALPHAMTRL == 1 )

	dif.w = tex2D( tex0c, In.tex0 ).w < 0.5h ? 0.0h : 1.0h;
	
#endif

return dif;
}

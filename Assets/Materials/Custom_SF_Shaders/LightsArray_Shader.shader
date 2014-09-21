// Shader created with Shader Forge Beta 0.31 
// Shader Forge (c) Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:0.31;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,limd:1,uamb:True,mssp:True,lmpd:False,lprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,hqsc:True,hqlp:False,blpr:0,bsrc:0,bdst:0,culm:0,dpts:2,wrdp:True,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0,fgcg:0,fgcb:0,fgca:1,fgde:0.05,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:1,x:32719,y:32712|diff-96-RGB,spec-98-RGB,gloss-98-A,emission-289-OUT;n:type:ShaderForge.SFN_Color,id:96,x:32484,y:32487,ptlb:Diffuse,ptin:_Diffuse,glob:False,c1:0.0627451,c2:0.0627451,c3:0.0627451,c4:1;n:type:ShaderForge.SFN_Color,id:98,x:32765,y:32340,ptlb:Specular,ptin:_Specular,glob:False,c1:0.2509804,c2:0.245892,c3:0.1879892,c4:0.2509804;n:type:ShaderForge.SFN_Tex2d,id:99,x:33800,y:32697,tex:f5f09cf8c1c80984dbf03fde029b55ae,ntxv:0,isnm:False|TEX-127-TEX;n:type:ShaderForge.SFN_Tex2d,id:102,x:33692,y:32244,tex:f5f09cf8c1c80984dbf03fde029b55ae,ntxv:0,isnm:False|UVIN-349-OUT,TEX-127-TEX;n:type:ShaderForge.SFN_Panner,id:105,x:34231,y:32173,spu:1,spv:1|UVIN-132-UVOUT,DIST-572-OUT;n:type:ShaderForge.SFN_Time,id:107,x:36003,y:32243;n:type:ShaderForge.SFN_Multiply,id:111,x:35792,y:32345|A-107-T,B-112-OUT;n:type:ShaderForge.SFN_ValueProperty,id:112,x:36003,y:32437,ptlb:Blink Speed,ptin:_BlinkSpeed,glob:False,v1:1;n:type:ShaderForge.SFN_Tex2dAsset,id:127,x:33987,y:32437,ptlb:Gradient,ptin:_Gradient,glob:False,tex:f5f09cf8c1c80984dbf03fde029b55ae;n:type:ShaderForge.SFN_TexCoord,id:132,x:34661,y:31976,uv:0;n:type:ShaderForge.SFN_Multiply,id:146,x:33204,y:32539|A-269-OUT,B-450-OUT;n:type:ShaderForge.SFN_Power,id:269,x:33443,y:32312|VAL-102-G,EXP-279-OUT;n:type:ShaderForge.SFN_ValueProperty,id:279,x:33694,y:32414,ptlb:Flash Time,ptin:_FlashTime,glob:False,v1:7;n:type:ShaderForge.SFN_Multiply,id:289,x:33009,y:32791|A-146-OUT,B-290-RGB,C-296-OUT;n:type:ShaderForge.SFN_Color,id:290,x:33531,y:32937,ptlb:Light Color/Brightness,ptin:_LightColorBrightness,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:296,x:33232,y:32935|A-290-A,B-297-OUT;n:type:ShaderForge.SFN_Vector1,id:297,x:33232,y:33085,v1:8;n:type:ShaderForge.SFN_Rotator,id:307,x:34288,y:31895|UVIN-132-UVOUT,PIV-512-OUT,ANG-559-OUT;n:type:ShaderForge.SFN_Add,id:349,x:33963,y:32128|A-307-UVOUT,B-105-UVOUT;n:type:ShaderForge.SFN_Sin,id:436,x:35325,y:31792|IN-111-OUT;n:type:ShaderForge.SFN_Step,id:450,x:33552,y:32653|A-99-B,B-451-OUT;n:type:ShaderForge.SFN_Vector1,id:451,x:33552,y:32781,v1:0.5;n:type:ShaderForge.SFN_Vector2,id:512,x:34522,y:31743,v1:0.75,v2:0.5;n:type:ShaderForge.SFN_Multiply,id:559,x:35073,y:31779|A-560-OUT,B-436-OUT;n:type:ShaderForge.SFN_Vector1,id:560,x:35284,y:31691,v1:1.25;n:type:ShaderForge.SFN_Multiply,id:570,x:34895,y:32017|A-634-OUT,B-571-OUT;n:type:ShaderForge.SFN_Vector1,id:571,x:35124,y:32106,v1:0.1;n:type:ShaderForge.SFN_Add,id:572,x:34868,y:32200|A-570-OUT,B-111-OUT;n:type:ShaderForge.SFN_Multiply,id:616,x:35294,y:32031|A-618-OUT,B-111-OUT;n:type:ShaderForge.SFN_Vector1,id:618,x:35462,y:31981,v1:2;n:type:ShaderForge.SFN_Sin,id:634,x:35124,y:31943|IN-616-OUT;proporder:96-98-112-127-279-290;pass:END;sub:END;*/

Shader "Custom/LightsArray_Shader" {
    Properties {
        _Diffuse ("Diffuse", Color) = (0.0627451,0.0627451,0.0627451,1)
        _Specular ("Specular", Color) = (0.2509804,0.245892,0.1879892,0.2509804)
        _BlinkSpeed ("Blink Speed", Float ) = 1
        _Gradient ("Gradient", 2D) = "white" {}
        _FlashTime ("Flash Time", Float ) = 7
        _LightColorBrightness ("Light Color/Brightness", Color) = (0.5,0.5,0.5,1)
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        LOD 200
        Pass {
            Name "ForwardBase"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            uniform float4 _Diffuse;
            uniform float4 _Specular;
            uniform float _BlinkSpeed;
            uniform sampler2D _Gradient; uniform float4 _Gradient_ST;
            uniform float _FlashTime;
            uniform float4 _LightColorBrightness;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 uv0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o;
                o.uv0 = v.uv0;
                o.normalDir = mul(float4(v.normal,0), _World2Object).xyz;
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
/////// Normals:
                float3 normalDirection =  i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = dot( normalDirection, lightDirection );
                float3 diffuse = max( 0.0, NdotL) * attenColor + UNITY_LIGHTMODEL_AMBIENT.xyz;
////// Emissive:
                float4 node_107 = _Time + _TimeEditor;
                float node_111 = (node_107.g*_BlinkSpeed);
                float node_307_ang = (1.25*sin(node_111));
                float node_307_spd = 1.0;
                float node_307_cos = cos(node_307_spd*node_307_ang);
                float node_307_sin = sin(node_307_spd*node_307_ang);
                float2 node_307_piv = float2(0.75,0.5);
                float2 node_132 = i.uv0;
                float2 node_307 = (mul(node_132.rg-node_307_piv,float2x2( node_307_cos, -node_307_sin, node_307_sin, node_307_cos))+node_307_piv);
                float node_616 = (2.0*node_111);
                float2 node_349 = (node_307+(node_132.rg+((sin(node_616)*0.1)+node_111)*float2(1,1)));
                float2 node_679 = i.uv0;
                float3 emissive = ((pow(tex2D(_Gradient,TRANSFORM_TEX(node_349, _Gradient)).g,_FlashTime)*step(tex2D(_Gradient,TRANSFORM_TEX(node_679.rg, _Gradient)).b,0.5))*_LightColorBrightness.rgb*(_LightColorBrightness.a*8.0));
///////// Gloss:
                float gloss = _Specular.a;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                NdotL = max(0.0, NdotL);
                float3 specularColor = _Specular.rgb;
                float3 specular = (floor(attenuation) * _LightColor0.xyz) * pow(max(0,dot(halfDirection,normalDirection)),specPow) * specularColor;
                float3 finalColor = 0;
                float3 diffuseLight = diffuse;
                finalColor += diffuseLight * _Diffuse.rgb;
                finalColor += specular;
                finalColor += emissive;
/// Final Color:
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "ForwardAdd"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            Fog { Color (0,0,0,0) }
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            uniform float4 _Diffuse;
            uniform float4 _Specular;
            uniform float _BlinkSpeed;
            uniform sampler2D _Gradient; uniform float4 _Gradient_ST;
            uniform float _FlashTime;
            uniform float4 _LightColorBrightness;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 uv0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o;
                o.uv0 = v.uv0;
                o.normalDir = mul(float4(v.normal,0), _World2Object).xyz;
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
/////// Normals:
                float3 normalDirection =  i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = dot( normalDirection, lightDirection );
                float3 diffuse = max( 0.0, NdotL) * attenColor;
///////// Gloss:
                float gloss = _Specular.a;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                NdotL = max(0.0, NdotL);
                float3 specularColor = _Specular.rgb;
                float3 specular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow) * specularColor;
                float3 finalColor = 0;
                float3 diffuseLight = diffuse;
                finalColor += diffuseLight * _Diffuse.rgb;
                finalColor += specular;
/// Final Color:
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}

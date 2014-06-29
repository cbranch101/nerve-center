// Shader created with Shader Forge Beta 0.31 
// Shader Forge (c) Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:0.31;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,limd:1,uamb:True,mssp:True,lmpd:False,lprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,hqsc:True,hqlp:False,blpr:0,bsrc:0,bdst:0,culm:0,dpts:2,wrdp:True,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:1,x:32328,y:32683|diff-2-RGB,spec-4-RGB,gloss-4-A,emission-238-OUT;n:type:ShaderForge.SFN_Color,id:2,x:32718,y:32480,ptlb:Screen Color Off,ptin:_ScreenColorOff,glob:False,c1:0.051,c2:0.01,c3:0.01,c4:1;n:type:ShaderForge.SFN_Color,id:4,x:32844,y:32647,ptlb:Specularity,ptin:_Specularity,glob:False,c1:0.6911765,c2:0.6454368,c3:0.6454368,c4:0.4941176;n:type:ShaderForge.SFN_Tex2d,id:5,x:34671,y:32656,ptlb:DOS Text,ptin:_DOSText,tex:3cb4d9496949be647880a41c7b8c07f3,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:11,x:34009,y:33021,ptlb:Gradient (Green Channel),ptin:_GradientGreenChannel,tex:f5f09cf8c1c80984dbf03fde029b55ae,ntxv:0,isnm:False|UVIN-41-UVOUT;n:type:ShaderForge.SFN_Add,id:12,x:33605,y:32857|A-227-OUT,B-28-OUT;n:type:ShaderForge.SFN_TexCoord,id:18,x:34659,y:33027,uv:0;n:type:ShaderForge.SFN_Multiply,id:28,x:33819,y:33021|A-11-G,B-30-OUT;n:type:ShaderForge.SFN_Slider,id:30,x:33987,y:33242,ptlb:Scan Lines Intensity,ptin:_ScanLinesIntensity,min:0,cur:0.25,max:1;n:type:ShaderForge.SFN_Panner,id:41,x:34208,y:33029,spu:1,spv:1|UVIN-18-UVOUT,DIST-81-OUT;n:type:ShaderForge.SFN_Time,id:70,x:34659,y:33483;n:type:ShaderForge.SFN_Multiply,id:81,x:34409,y:33347|A-198-OUT,B-70-T;n:type:ShaderForge.SFN_Subtract,id:131,x:33177,y:32926|A-12-OUT,B-139-OUT;n:type:ShaderForge.SFN_Tex2d,id:132,x:33879,y:33710,ptlb:Vignetting,ptin:_Vignetting,tex:4416db42cf2b3cd48a38e51a55ca0bd9,ntxv:0,isnm:False|UVIN-171-OUT;n:type:ShaderForge.SFN_Multiply,id:139,x:33411,y:33710|A-437-OUT,B-142-OUT;n:type:ShaderForge.SFN_Slider,id:142,x:33332,y:33886,ptlb:Vignetting Intensity,ptin:_VignettingIntensity,min:0,cur:0.5,max:1.25;n:type:ShaderForge.SFN_TexCoord,id:155,x:34517,y:33710,uv:0;n:type:ShaderForge.SFN_Multiply,id:156,x:34289,y:33710|A-155-UVOUT,B-157-OUT;n:type:ShaderForge.SFN_Vector1,id:157,x:34289,y:33846,v1:0.6;n:type:ShaderForge.SFN_Vector1,id:164,x:34085,y:33846,v1:0.2;n:type:ShaderForge.SFN_Add,id:171,x:34085,y:33710|A-156-OUT,B-164-OUT;n:type:ShaderForge.SFN_Exp,id:184,x:34798,y:33229,et:1|IN-213-OUT;n:type:ShaderForge.SFN_Subtract,id:198,x:34622,y:33262|A-184-OUT,B-199-OUT;n:type:ShaderForge.SFN_Vector1,id:199,x:34817,y:33406,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:213,x:35027,y:33171,ptlb:Scan Lines Speed,ptin:_ScanLinesSpeed,glob:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:227,x:33880,y:32760|A-298-OUT,B-228-OUT;n:type:ShaderForge.SFN_ValueProperty,id:228,x:33880,y:32919,ptlb:Screen Image Brightness,ptin:_ScreenImageBrightness,glob:False,v1:1.25;n:type:ShaderForge.SFN_Multiply,id:238,x:32663,y:32926|A-261-OUT,B-239-RGB;n:type:ShaderForge.SFN_Color,id:239,x:32663,y:33112,ptlb:Screen Image Tint,ptin:_ScreenImageTint,glob:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:261,x:32927,y:32926|A-131-OUT,B-262-R;n:type:ShaderForge.SFN_Tex2d,id:262,x:32927,y:33101,ptlb:Scan Lines (Red Channel),ptin:_ScanLinesRedChannel,tex:f5f09cf8c1c80984dbf03fde029b55ae,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Time,id:280,x:35067,y:32352;n:type:ShaderForge.SFN_If,id:298,x:34221,y:32656|A-299-OUT,B-300-OUT,GT-5-RGB,EQ-5-RGB,LT-380-RGB;n:type:ShaderForge.SFN_Frac,id:299,x:34875,y:32352|IN-280-T;n:type:ShaderForge.SFN_Vector1,id:300,x:34856,y:32518,v1:0.5;n:type:ShaderForge.SFN_Tex2d,id:380,x:34671,y:32830,ptlb:DOS Text Blink,ptin:_DOSTextBlink,tex:099b94d5c825bef46a4afc330e61244b,ntxv:2,isnm:False;n:type:ShaderForge.SFN_OneMinus,id:437,x:33639,y:33710|IN-132-RGB;proporder:5-380-239-228-2-4-11-30-213-132-142-262;pass:END;sub:END;*/

Shader "Custom/Screen_Shader" {
    Properties {
        _DOSText ("DOS Text", 2D) = "black" {}
        _DOSTextBlink ("DOS Text Blink", 2D) = "black" {}
        _ScreenImageTint ("Screen Image Tint", Color) = (1,1,1,1)
        _ScreenImageBrightness ("Screen Image Brightness", Float ) = 1.25
        _ScreenColorOff ("Screen Color Off", Color) = (0.051,0.01,0.01,1)
        _Specularity ("Specularity", Color) = (0.6911765,0.6454368,0.6454368,0.4941176)
        _GradientGreenChannel ("Gradient (Green Channel)", 2D) = "white" {}
        _ScanLinesIntensity ("Scan Lines Intensity", Range(0, 1)) = 0.25
        _ScanLinesSpeed ("Scan Lines Speed", Float ) = 1
        _Vignetting ("Vignetting", 2D) = "white" {}
        _VignettingIntensity ("Vignetting Intensity", Range(0, 1.25)) = 0.5
        _ScanLinesRedChannel ("Scan Lines (Red Channel)", 2D) = "white" {}
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
            uniform float4 _ScreenColorOff;
            uniform float4 _Specularity;
            uniform sampler2D _DOSText; uniform float4 _DOSText_ST;
            uniform sampler2D _GradientGreenChannel; uniform float4 _GradientGreenChannel_ST;
            uniform float _ScanLinesIntensity;
            uniform sampler2D _Vignetting; uniform float4 _Vignetting_ST;
            uniform float _VignettingIntensity;
            uniform float _ScanLinesSpeed;
            uniform float _ScreenImageBrightness;
            uniform float4 _ScreenImageTint;
            uniform sampler2D _ScanLinesRedChannel; uniform float4 _ScanLinesRedChannel_ST;
            uniform sampler2D _DOSTextBlink; uniform float4 _DOSTextBlink_ST;
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
                float4 node_280 = _Time + _TimeEditor;
                float node_298_if_leA = step(frac(node_280.g),0.5);
                float node_298_if_leB = step(0.5,frac(node_280.g));
                float2 node_452 = i.uv0;
                float4 node_5 = tex2D(_DOSText,TRANSFORM_TEX(node_452.rg, _DOSText));
                float4 node_70 = _Time + _TimeEditor;
                float2 node_41 = (i.uv0.rg+((exp2(_ScanLinesSpeed)-1.0)*node_70.g)*float2(1,1));
                float2 node_171 = ((i.uv0.rg*0.6)+0.2);
                float4 node_132 = tex2D(_Vignetting,TRANSFORM_TEX(node_171, _Vignetting));
                float3 emissive = (((((lerp((node_298_if_leA*tex2D(_DOSTextBlink,TRANSFORM_TEX(node_452.rg, _DOSTextBlink)).rgb)+(node_298_if_leB*node_5.rgb),node_5.rgb,node_298_if_leA*node_298_if_leB)*_ScreenImageBrightness)+(tex2D(_GradientGreenChannel,TRANSFORM_TEX(node_41, _GradientGreenChannel)).g*_ScanLinesIntensity))-((1.0 - node_132.rgb)*_VignettingIntensity))*tex2D(_ScanLinesRedChannel,TRANSFORM_TEX(node_452.rg, _ScanLinesRedChannel)).r)*_ScreenImageTint.rgb);
///////// Gloss:
                float gloss = _Specularity.a;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                NdotL = max(0.0, NdotL);
                float3 specularColor = _Specularity.rgb;
                float3 specular = (floor(attenuation) * _LightColor0.xyz) * pow(max(0,dot(halfDirection,normalDirection)),specPow) * specularColor;
                float3 finalColor = 0;
                float3 diffuseLight = diffuse;
                finalColor += diffuseLight * _ScreenColorOff.rgb;
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
            uniform float4 _ScreenColorOff;
            uniform float4 _Specularity;
            uniform sampler2D _DOSText; uniform float4 _DOSText_ST;
            uniform sampler2D _GradientGreenChannel; uniform float4 _GradientGreenChannel_ST;
            uniform float _ScanLinesIntensity;
            uniform sampler2D _Vignetting; uniform float4 _Vignetting_ST;
            uniform float _VignettingIntensity;
            uniform float _ScanLinesSpeed;
            uniform float _ScreenImageBrightness;
            uniform float4 _ScreenImageTint;
            uniform sampler2D _ScanLinesRedChannel; uniform float4 _ScanLinesRedChannel_ST;
            uniform sampler2D _DOSTextBlink; uniform float4 _DOSTextBlink_ST;
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
                float gloss = _Specularity.a;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                NdotL = max(0.0, NdotL);
                float3 specularColor = _Specularity.rgb;
                float3 specular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow) * specularColor;
                float3 finalColor = 0;
                float3 diffuseLight = diffuse;
                finalColor += diffuseLight * _ScreenColorOff.rgb;
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

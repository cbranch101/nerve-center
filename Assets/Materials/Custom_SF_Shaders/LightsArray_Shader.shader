// Shader created with Shader Forge Beta 0.36 
// Shader Forge (c) Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:0.36;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,limd:1,uamb:True,mssp:True,lmpd:False,lprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:0,bsrc:0,bdst:0,culm:0,dpts:2,wrdp:True,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0,fgcg:0,fgcb:0,fgca:1,fgde:0.05,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:1,x:32719,y:32712|diff-96-RGB,spec-98-RGB,gloss-98-A,emission-657-OUT,amdfl-646-RGB,amspl-645-RGB;n:type:ShaderForge.SFN_Color,id:96,x:32484,y:32487,ptlb:Diffuse,ptin:_Diffuse,glob:False,c1:0.0627451,c2:0.0627451,c3:0.0627451,c4:1;n:type:ShaderForge.SFN_Color,id:98,x:32765,y:32340,ptlb:Specular,ptin:_Specular,glob:False,c1:0.2509804,c2:0.245892,c3:0.1879892,c4:0.2509804;n:type:ShaderForge.SFN_Tex2d,id:99,x:34294,y:32717,tex:f5f09cf8c1c80984dbf03fde029b55ae,ntxv:0,isnm:False|TEX-127-TEX;n:type:ShaderForge.SFN_Tex2d,id:102,x:34186,y:32264,tex:f5f09cf8c1c80984dbf03fde029b55ae,ntxv:0,isnm:False|UVIN-349-OUT,TEX-127-TEX;n:type:ShaderForge.SFN_Panner,id:105,x:34725,y:32193,spu:1,spv:1|UVIN-132-UVOUT,DIST-572-OUT;n:type:ShaderForge.SFN_Time,id:107,x:36497,y:32263;n:type:ShaderForge.SFN_Multiply,id:111,x:36286,y:32365|A-107-T,B-112-OUT;n:type:ShaderForge.SFN_ValueProperty,id:112,x:36497,y:32457,ptlb:Blink Speed,ptin:_BlinkSpeed,glob:False,v1:1;n:type:ShaderForge.SFN_Tex2dAsset,id:127,x:34481,y:32457,ptlb:Gradient,ptin:_Gradient,glob:False,tex:f5f09cf8c1c80984dbf03fde029b55ae;n:type:ShaderForge.SFN_TexCoord,id:132,x:35155,y:31996,uv:0;n:type:ShaderForge.SFN_Multiply,id:146,x:33698,y:32559|A-269-OUT,B-450-OUT;n:type:ShaderForge.SFN_Power,id:269,x:33937,y:32332|VAL-102-G,EXP-279-OUT;n:type:ShaderForge.SFN_ValueProperty,id:279,x:34188,y:32434,ptlb:Flash Time,ptin:_FlashTime,glob:False,v1:7;n:type:ShaderForge.SFN_Multiply,id:289,x:33503,y:32811|A-146-OUT,B-290-RGB,C-296-OUT;n:type:ShaderForge.SFN_Color,id:290,x:34025,y:32957,ptlb:Light Color_Brightness,ptin:_LightColor_Brightness,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:296,x:33726,y:32959|A-290-A,B-297-OUT;n:type:ShaderForge.SFN_Vector1,id:297,x:33726,y:33105,v1:8;n:type:ShaderForge.SFN_Rotator,id:307,x:34782,y:31915|UVIN-132-UVOUT,PIV-512-OUT,ANG-559-OUT;n:type:ShaderForge.SFN_Add,id:349,x:34457,y:32148|A-307-UVOUT,B-105-UVOUT;n:type:ShaderForge.SFN_Sin,id:436,x:35819,y:31812|IN-111-OUT;n:type:ShaderForge.SFN_Step,id:450,x:34046,y:32673|A-99-B,B-451-OUT;n:type:ShaderForge.SFN_Vector1,id:451,x:34046,y:32801,v1:0.5;n:type:ShaderForge.SFN_Vector2,id:512,x:35016,y:31763,v1:0.75,v2:0.5;n:type:ShaderForge.SFN_Multiply,id:559,x:35567,y:31799|A-560-OUT,B-436-OUT;n:type:ShaderForge.SFN_Vector1,id:560,x:35778,y:31711,v1:1.25;n:type:ShaderForge.SFN_Multiply,id:570,x:35389,y:32037|A-634-OUT,B-571-OUT;n:type:ShaderForge.SFN_Vector1,id:571,x:35618,y:32126,v1:0.1;n:type:ShaderForge.SFN_Add,id:572,x:35362,y:32220|A-570-OUT,B-111-OUT;n:type:ShaderForge.SFN_Multiply,id:616,x:35788,y:32051|A-618-OUT,B-111-OUT;n:type:ShaderForge.SFN_Vector1,id:618,x:35956,y:32001,v1:2;n:type:ShaderForge.SFN_Sin,id:634,x:35618,y:31963|IN-616-OUT;n:type:ShaderForge.SFN_SkyshopSpec,id:645,x:33119,y:33424,sprot:True,spblend:True,splmocc:False|GLOSS-98-A;n:type:ShaderForge.SFN_SkyshopDiff,id:646,x:33119,y:33220,dfrot:True,dfblend:True,dflmocc:False;n:type:ShaderForge.SFN_ConstantClamp,id:657,x:33335,y:32811,min:0,max:1.5|IN-289-OUT;proporder:96-98-112-127-279-290;pass:END;sub:END;*/

Shader "Custom/LightsArray_Shader" {
    Properties {
        _Diffuse ("Diffuse", Color) = (0.0627451,0.0627451,0.0627451,1)
        _Specular ("Specular", Color) = (0.2509804,0.245892,0.1879892,0.2509804)
        _BlinkSpeed ("Blink Speed", Float ) = 1
        _Gradient ("Gradient", 2D) = "white" {}
        _FlashTime ("Flash Time", Float ) = 7
        _LightColor_Brightness ("Light Color_Brightness", Color) = (0.5,0.5,0.5,1)
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
            #pragma multi_compile MARMO_SKY_BLEND_OFF MARMO_SKY_BLEND_ON
            #pragma multi_compile MARMO_BOX_PROJECTION_OFF MARMO_BOX_PROJECTION_ON
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            #pragma glsl
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            uniform float4 _Diffuse;
            uniform float4 _Specular;
            uniform float _BlinkSpeed;
            uniform sampler2D _Gradient; uniform float4 _Gradient_ST;
            uniform float _FlashTime;
            uniform float4 _LightColor_Brightness;
            #ifndef MARMO_EXPOSURE_IBL_DEFINED
            #define MARMO_EXPOSURE_IBL_DEFINED
            uniform float  _BlendWeightIBL;
            uniform float4 _ExposureIBL;
            uniform float4 _ExposureLM;
            uniform float4 _UniformOcclusion;
            uniform float4 _ExposureIBL1;
            uniform float4 _ExposureLM1;
            inline float4 marmoExposureBlended() {
            	float4 exposure = _ExposureIBL;
            	#if !LIGHTMAP_OFF
            		exposure.xy *= _ExposureLM.xy;
            	#endif
            	#if MARMO_SKY_BLEND_ON
            		float4 exposure1 = _ExposureIBL1;
            		#if !LIGHTMAP_OFF
            			exposure1.xy *= _ExposureLM1.xy;
            		#endif
            		exposure = lerp(exposure1, exposure, _BlendWeightIBL);
            	#endif
            	exposure.xy *= _UniformOcclusion.xy;
            	return exposure;
            }
            #endif
            
            #ifndef MARMO_SKY_MATRIX_DEFINED
            #define MARMO_SKY_MATRIX_DEFINED
            uniform float4x4 _SkyMatrix;
            uniform float4x4 _InvSkyMatrix;
            uniform float3   _SkySize;
            uniform float3   _SkyMin;
            uniform float3   _SkyMax;
            uniform float4x4 _SkyMatrix1;
            uniform float4x4 _InvSkyMatrix1;
            uniform float3   _SkySize1;
            uniform float3   _SkyMin1;
            uniform float3   _SkyMax1;
            inline float3 mulVec3(uniform float4x4 m, float3 v ) { return float3(dot(m[0].xyz,v.xyz), dot(m[1].xyz,v.xyz), dot(m[2].xyz,v.xyz)); }
            inline float3 transposeMulVec3(uniform float4x4 m, float3 v )   { return m[0].xyz*v.x + (m[1].xyz*v.y + (m[2].xyz*v.z)); }
            inline float3 transposeMulVec3(uniform float3x3 m, float3 v )   { return m[0].xyz*v.x + (m[1].xyz*v.y + (m[2].xyz*v.z)); }
            inline float3 transposeMulPoint3(uniform float4x4 m, float3 p ) { return m[0].xyz*p.x + (m[1].xyz*p.y + (m[2].xyz*p.z + m[3].xyz)); }
            inline float3 marmoSkyRotate (uniform float4x4 skyMatrix, float3 R) { return transposeMulVec3(skyMatrix, R); }
            #endif
            
            #ifndef MARMO_RGBM_DEFINED
            #define MARMO_RGBM_DEFINED
            #define IS_LINEAR ((-3.22581*unity_ColorSpaceGrey.r) + 1.6129)
            #define IS_GAMMA  (( 3.22581*unity_ColorSpaceGrey.r) - 0.6129)
            inline half  toLinearFast1(half c) { half c2=c*c; return dot(half2(0.7532,0.2468), half2(c2,c*c2)); }
            inline half3 fromRGBM(half4 c) { c.a*=6.0; return c.rgb*lerp(c.a, toLinearFast1(c.a), IS_LINEAR); }
            #endif
            
            #ifndef MARMO_SPECULAR_DEFINED
            #define MARMO_SPECULAR_DEFINED
            uniform samplerCUBE _SpecCubeIBL;
            uniform samplerCUBE _SpecCubeIBL1;
            float3 marmoSkyProject(uniform float4x4 skyMatrix, uniform float4x4 invSkyMatrix, uniform float3 skyMin, uniform float3 skyMax, uniform float3 worldPos, float3 R) {
            	#if MARMO_BOX_PROJECTION_ON
            		R = marmoSkyRotate(skyMatrix, R);
            		float3 invR = 1.0/R;
            		float4 P;
            		P.xyz = worldPos;
            		P.w=1.0; P.xyz = mul(invSkyMatrix,P).xyz;
            		float4 rbmax = float4(0.0,0.0,0.0,0.0);
            		float4 rbmin = float4(0.0,0.0,0.0,0.0);
            		rbmax.xyz = skyMax - P.xyz;
            		rbmin.xyz = skyMin - P.xyz;
            		float3 rbminmax = invR * lerp(rbmin.xyz, rbmax.xyz, saturate(R*1000000.0));
            		float fa = min(min(rbminmax.x, rbminmax.y), rbminmax.z);
            		return P.xyz + R*fa;
            	#else
            		R = marmoSkyRotate(skyMatrix, R);
            		return R;
            	#endif
            }
            float3 marmoSpecular(float3 dir) {
            	float4 exposure = marmoExposureBlended();
            	float3 R;
            	R = marmoSkyRotate(_SkyMatrix, dir);
            	float3 specIBL = fromRGBM(texCUBE(_SpecCubeIBL, R));
            	#if MARMO_SKY_BLEND_ON
            		R = marmoSkyRotate(_SkyMatrix1, dir);
            		float3 specIBL1 = fromRGBM(texCUBE(_SpecCubeIBL1, R));
            		specIBL = lerp(specIBL1, specIBL, _BlendWeightIBL);
            	#endif
            	return specIBL * (exposure.w * exposure.y);
            }
            
            float3 marmoMipSpecular(float3 dir, float3 worldPos, float gloss) {
            	float4 exposure = marmoExposureBlended();
            	float4 lookup;
            	lookup.xyz = marmoSkyProject(_SkyMatrix, _InvSkyMatrix, _SkyMin, _SkyMax, worldPos, dir);
            	lookup.w = (-6.0*gloss) + 6.0;
            	float3 specIBL = fromRGBM(texCUBElod(_SpecCubeIBL, lookup));
            	#if MARMO_SKY_BLEND_ON
            		lookup.xyz = marmoSkyProject(_SkyMatrix1, _InvSkyMatrix1, _SkyMin1, _SkyMax1, worldPos, dir);
            		float3 specIBL1 = fromRGBM(texCUBElod(_SpecCubeIBL1, lookup));
            		specIBL = lerp(specIBL1, specIBL, _BlendWeightIBL);
            	#endif
            	return specIBL * (exposure.w * exposure.y);
            }
            #endif
            
            
            #ifndef MARMO_EXPOSURE_IBL_DEFINED
            #define MARMO_EXPOSURE_IBL_DEFINED
            uniform float  _BlendWeightIBL;
            uniform float4 _ExposureIBL;
            uniform float4 _ExposureLM;
            uniform float4 _UniformOcclusion;
            uniform float4 _ExposureIBL1;
            uniform float4 _ExposureLM1;
            inline float4 marmoExposureBlended() {
            	float4 exposure = _ExposureIBL;
            	#if !LIGHTMAP_OFF
            		exposure.xy *= _ExposureLM.xy;
            	#endif
            	#if MARMO_SKY_BLEND_ON
            		float4 exposure1 = _ExposureIBL1;
            		#if !LIGHTMAP_OFF
            			exposure1.xy *= _ExposureLM1.xy;
            		#endif
            		exposure = lerp(exposure1, exposure, _BlendWeightIBL);
            	#endif
            	exposure.xy *= _UniformOcclusion.xy;
            	return exposure;
            }
            #endif
            
            #ifndef MARMO_SKY_MATRIX_DEFINED
            #define MARMO_SKY_MATRIX_DEFINED
            uniform float4x4 _SkyMatrix;
            uniform float4x4 _InvSkyMatrix;
            uniform float3   _SkySize;
            uniform float3   _SkyMin;
            uniform float3   _SkyMax;
            uniform float4x4 _SkyMatrix1;
            uniform float4x4 _InvSkyMatrix1;
            uniform float3   _SkySize1;
            uniform float3   _SkyMin1;
            uniform float3   _SkyMax1;
            inline float3 mulVec3(uniform float4x4 m, float3 v ) { return float3(dot(m[0].xyz,v.xyz), dot(m[1].xyz,v.xyz), dot(m[2].xyz,v.xyz)); }
            inline float3 transposeMulVec3(uniform float4x4 m, float3 v )   { return m[0].xyz*v.x + (m[1].xyz*v.y + (m[2].xyz*v.z)); }
            inline float3 transposeMulVec3(uniform float3x3 m, float3 v )   { return m[0].xyz*v.x + (m[1].xyz*v.y + (m[2].xyz*v.z)); }
            inline float3 transposeMulPoint3(uniform float4x4 m, float3 p ) { return m[0].xyz*p.x + (m[1].xyz*p.y + (m[2].xyz*p.z + m[3].xyz)); }
            inline float3 marmoSkyRotate (uniform float4x4 skyMatrix, float3 R) { return transposeMulVec3(skyMatrix, R); }
            #endif
            
            #pragma glsl
            #ifndef MARMO_DIFFUSE_DEFINED
            #define MARMO_DIFFUSE_DEFINED
            uniform float3 _SH0;
            uniform float3 _SH1;
            uniform float3 _SH2;
            uniform float3 _SH3;
            uniform float3 _SH4;
            uniform float3 _SH5;
            uniform float3 _SH6;
            uniform float3 _SH7;
            uniform float3 _SH8;
            
            uniform float3 _SH01;
            uniform float3 _SH11;
            uniform float3 _SH21;
            uniform float3 _SH31;
            uniform float3 _SH41;
            uniform float3 _SH51;
            uniform float3 _SH61;
            uniform float3 _SH71;
            uniform float3 _SH81;
            
            float3 SHLookup(float3 dir) {
            	dir = marmoSkyRotate(_SkyMatrix, dir);
            	dir = normalize(dir);
            	float3 band0, band1, band2;
            	band0 = _SH0.xyz;
            
            	band1 =  _SH1.xyz * dir.y;
            	band1 += _SH2.xyz * dir.z;
            	band1 += _SH3.xyz * dir.x;
            
            	float3 swz = dir.yyz * dir.xzx;
            	band2 =  _SH4.xyz * swz.x;
            	band2 += _SH5.xyz * swz.y;
            	band2 += _SH7.xyz * swz.z;
            	float3 sqr = dir * dir;
            	band2 += _SH6.xyz * ( 3.0*sqr.z - 1.0 );
            	band2 += _SH8.xyz * ( sqr.x - sqr.y );
            	return band0 + band1 + band2;
            }
            float3 SHLookup1(float3 dir) {
            	dir = marmoSkyRotate(_SkyMatrix1, dir);
            	dir = normalize(dir);
            	float3 band0, band1, band2;
            	band0 = _SH01.xyz;
            
            	band1 =  _SH11.xyz * dir.y;
            	band1 += _SH21.xyz * dir.z;
            	band1 += _SH31.xyz * dir.x;
            
            	float3 swz = dir.yyz * dir.xzx;
            	band2 =  _SH41.xyz * swz.x;
            	band2 += _SH51.xyz * swz.y;
            	band2 += _SH71.xyz * swz.z;
            	//Commented coefficients because of internal Unity PropertyBlock issues.
            	//float3 sqr = dir * dir;
            	//band2 += _SH61.xyz * ( 3.0*sqr.z - 1.0 );
            	//band2 += _SH81.xyz * ( sqr.x - sqr.y );
            	return band0 + band1 + band2;
            }
            float3 marmoDiffuse(float3 dir) {
            	float4 exposure = marmoExposureBlended();
            	float3 diffIBL = SHLookup(dir);
            	#if MARMO_SKY_BLEND_ON
            		float3 diffIBL1 = SHLookup1(dir);
            		diffIBL = lerp(diffIBL1, diffIBL, _BlendWeightIBL);
            	#endif
            	return (exposure.x * exposure.w) * abs(diffIBL);
            }
            #endif
            
            
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o;
                o.uv0 = v.texcoord0;
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
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = dot( normalDirection, lightDirection );
                float3 diffuse = max( 0.0, NdotL) * attenColor + UNITY_LIGHTMODEL_AMBIENT.rgb;
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
                float2 node_349 = (node_307+(node_132.rg+((sin((2.0*node_111))*0.1)+node_111)*float2(1,1)));
                float2 node_673 = i.uv0;
                float3 emissive = clamp(((pow(tex2D(_Gradient,TRANSFORM_TEX(node_349, _Gradient)).g,_FlashTime)*step(tex2D(_Gradient,TRANSFORM_TEX(node_673.rg, _Gradient)).b,0.5))*_LightColor_Brightness.rgb*(_LightColor_Brightness.a*8.0)),0,1.5);
///////// Gloss:
                float gloss = _Specular.a;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                NdotL = max(0.0, NdotL);
                float3 specularColor = _Specular.rgb;
                float3 specularAmb = marmoMipSpecular(viewReflectDirection, i.posWorld.rgb, _Specular.a).rgb * specularColor;
                float3 specular = (floor(attenuation) * _LightColor0.xyz) * pow(max(0,dot(halfDirection,normalDirection)),specPow) * specularColor + specularAmb;
                float3 finalColor = 0;
                float3 diffuseLight = diffuse;
                diffuseLight += marmoDiffuse(normalDirection).rgb; // Diffuse Ambient Light
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
            #pragma glsl
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            uniform float4 _Diffuse;
            uniform float4 _Specular;
            uniform float _BlinkSpeed;
            uniform sampler2D _Gradient; uniform float4 _Gradient_ST;
            uniform float _FlashTime;
            uniform float4 _LightColor_Brightness;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o;
                o.uv0 = v.texcoord0;
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

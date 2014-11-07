// Shader created with Shader Forge Beta 0.36 
// Shader Forge (c) Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:0.36;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,limd:1,uamb:True,mssp:True,lmpd:False,lprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:0,bsrc:0,bdst:0,culm:0,dpts:2,wrdp:True,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:1,x:32240,y:32690|diff-171-OUT,spec-242-OUT,gloss-254-OUT,amdfl-264-RGB,amspl-265-RGB;n:type:ShaderForge.SFN_ChannelBlend,id:117,x:34272,y:32276,chbt:0|M-135-OUT,R-118-RGB,G-120-RGB,B-122-RGB,A-124-RGB;n:type:ShaderForge.SFN_Color,id:118,x:34658,y:32208,ptlb:Color 1,ptin:_Color1,glob:False,c1:1,c2:0,c3:0,c4:0;n:type:ShaderForge.SFN_Color,id:120,x:34786,y:32357,ptlb:Color 2,ptin:_Color2,glob:False,c1:0,c2:1,c3:0,c4:0;n:type:ShaderForge.SFN_Color,id:122,x:34660,y:32492,ptlb:Color 3,ptin:_Color3,glob:False,c1:0,c2:0,c3:1,c4:0;n:type:ShaderForge.SFN_Color,id:124,x:34515,y:32570,ptlb:Color 4,ptin:_Color4,glob:False,c1:0.5,c2:0,c3:0.5,c4:1;n:type:ShaderForge.SFN_Tex2d,id:126,x:34991,y:31855,tex:a218b580352f84845ae45f90a10a98ca,ntxv:0,isnm:False|TEX-141-TEX;n:type:ShaderForge.SFN_ChannelBlend,id:133,x:33832,y:32873,chbt:0|M-135-OUT,R-143-RGB,G-145-RGB,B-147-RGB,A-149-RGB;n:type:ShaderForge.SFN_Append,id:135,x:34780,y:31855|A-126-RGB,B-126-A;n:type:ShaderForge.SFN_Tex2dAsset,id:141,x:34991,y:31690,ptlb:Quad Shader IMG,ptin:_QuadShaderIMG,glob:False,tex:a218b580352f84845ae45f90a10a98ca;n:type:ShaderForge.SFN_Color,id:143,x:34151,y:32730,ptlb:Specular 1,ptin:_Specular1,glob:False,c1:1,c2:0.5,c3:0.5,c4:0;n:type:ShaderForge.SFN_Color,id:145,x:34256,y:32875,ptlb:Specular 2,ptin:_Specular2,glob:False,c1:0.5,c2:1,c3:0.5,c4:0;n:type:ShaderForge.SFN_Color,id:147,x:34256,y:33062,ptlb:Specular 3,ptin:_Specular3,glob:False,c1:0.5,c2:0.5,c3:1,c4:0;n:type:ShaderForge.SFN_Color,id:149,x:34102,y:33175,ptlb:Specular 4,ptin:_Specular4,glob:False,c1:0.75,c2:0.25,c3:0.75,c4:1;n:type:ShaderForge.SFN_ChannelBlend,id:156,x:33722,y:33112,chbt:0|M-135-OUT,R-143-A,G-145-A,B-147-A,A-149-A;n:type:ShaderForge.SFN_Fresnel,id:163,x:33574,y:32489|EXP-222-OUT;n:type:ShaderForge.SFN_Multiply,id:165,x:33167,y:32418|A-117-OUT,B-229-OUT;n:type:ShaderForge.SFN_Subtract,id:171,x:32902,y:32326|A-117-OUT,B-165-OUT;n:type:ShaderForge.SFN_Slider,id:222,x:33739,y:32489,ptlb:Fresnel Exponent,ptin:_FresnelExponent,min:0.1,cur:0.8000001,max:5;n:type:ShaderForge.SFN_Multiply,id:229,x:33385,y:32489|A-163-OUT,B-231-OUT;n:type:ShaderForge.SFN_Slider,id:231,x:33424,y:32655,ptlb:Fresnel Intensity,ptin:_FresnelIntensity,min:0.1,cur:0.8571429,max:2;n:type:ShaderForge.SFN_Add,id:241,x:33102,y:32800|A-229-OUT,B-133-OUT;n:type:ShaderForge.SFN_Add,id:242,x:32863,y:32728|A-133-OUT,B-241-OUT;n:type:ShaderForge.SFN_Add,id:254,x:33102,y:33014|A-229-OUT,B-156-OUT;n:type:ShaderForge.SFN_SkyshopDiff,id:264,x:32676,y:33106,dfrot:True,dfblend:True,dflmocc:False;n:type:ShaderForge.SFN_SkyshopSpec,id:265,x:32676,y:33290,sprot:True,spblend:True,splmocc:False|GLOSS-254-OUT;proporder:141-118-143-120-145-122-147-124-149-222-231;pass:END;sub:END;*/

Shader "Custom/NewShader" {
    Properties {
        _QuadShaderIMG ("Quad Shader IMG", 2D) = "white" {}
        _Color1 ("Color 1", Color) = (1,0,0,0)
        _Specular1 ("Specular 1", Color) = (1,0.5,0.5,0)
        _Color2 ("Color 2", Color) = (0,1,0,0)
        _Specular2 ("Specular 2", Color) = (0.5,1,0.5,0)
        _Color3 ("Color 3", Color) = (0,0,1,0)
        _Specular3 ("Specular 3", Color) = (0.5,0.5,1,0)
        _Color4 ("Color 4", Color) = (0.5,0,0.5,1)
        _Specular4 ("Specular 4", Color) = (0.75,0.25,0.75,1)
        _FresnelExponent ("Fresnel Exponent", Range(0.1, 5)) = 0.8000001
        _FresnelIntensity ("Fresnel Intensity", Range(0.1, 2)) = 0.8571429
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
            uniform float4 _Color1;
            uniform float4 _Color2;
            uniform float4 _Color3;
            uniform float4 _Color4;
            uniform sampler2D _QuadShaderIMG; uniform float4 _QuadShaderIMG_ST;
            uniform float4 _Specular1;
            uniform float4 _Specular2;
            uniform float4 _Specular3;
            uniform float4 _Specular4;
            uniform float _FresnelExponent;
            uniform float _FresnelIntensity;
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
///////// Gloss:
                float node_229 = (pow(1.0-max(0,dot(normalDirection, viewDirection)),_FresnelExponent)*_FresnelIntensity);
                float2 node_275 = i.uv0;
                float4 node_126 = tex2D(_QuadShaderIMG,TRANSFORM_TEX(node_275.rg, _QuadShaderIMG));
                float4 node_135 = float4(node_126.rgb,node_126.a);
                float node_254 = (node_229+(node_135.r*_Specular1.a + node_135.g*_Specular2.a + node_135.b*_Specular3.a + node_135.a*_Specular4.a));
                float gloss = node_254;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                NdotL = max(0.0, NdotL);
                float3 node_133 = (node_135.r*_Specular1.rgb + node_135.g*_Specular2.rgb + node_135.b*_Specular3.rgb + node_135.a*_Specular4.rgb);
                float3 specularColor = (node_133+(node_229+node_133));
                float3 specularAmb = marmoMipSpecular(viewReflectDirection, i.posWorld.rgb, node_254).rgb * specularColor;
                float3 specular = (floor(attenuation) * _LightColor0.xyz) * pow(max(0,dot(halfDirection,normalDirection)),specPow) * specularColor + specularAmb;
                float3 finalColor = 0;
                float3 diffuseLight = diffuse;
                diffuseLight += marmoDiffuse(normalDirection).rgb; // Diffuse Ambient Light
                float3 node_117 = (node_135.r*_Color1.rgb + node_135.g*_Color2.rgb + node_135.b*_Color3.rgb + node_135.a*_Color4.rgb);
                finalColor += diffuseLight * (node_117-(node_117*node_229));
                finalColor += specular;
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
            uniform float4 _Color1;
            uniform float4 _Color2;
            uniform float4 _Color3;
            uniform float4 _Color4;
            uniform sampler2D _QuadShaderIMG; uniform float4 _QuadShaderIMG_ST;
            uniform float4 _Specular1;
            uniform float4 _Specular2;
            uniform float4 _Specular3;
            uniform float4 _Specular4;
            uniform float _FresnelExponent;
            uniform float _FresnelIntensity;
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
                float node_229 = (pow(1.0-max(0,dot(normalDirection, viewDirection)),_FresnelExponent)*_FresnelIntensity);
                float2 node_276 = i.uv0;
                float4 node_126 = tex2D(_QuadShaderIMG,TRANSFORM_TEX(node_276.rg, _QuadShaderIMG));
                float4 node_135 = float4(node_126.rgb,node_126.a);
                float node_254 = (node_229+(node_135.r*_Specular1.a + node_135.g*_Specular2.a + node_135.b*_Specular3.a + node_135.a*_Specular4.a));
                float gloss = node_254;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                NdotL = max(0.0, NdotL);
                float3 node_133 = (node_135.r*_Specular1.rgb + node_135.g*_Specular2.rgb + node_135.b*_Specular3.rgb + node_135.a*_Specular4.rgb);
                float3 specularColor = (node_133+(node_229+node_133));
                float3 specular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow) * specularColor;
                float3 finalColor = 0;
                float3 diffuseLight = diffuse;
                float3 node_117 = (node_135.r*_Color1.rgb + node_135.g*_Color2.rgb + node_135.b*_Color3.rgb + node_135.a*_Color4.rgb);
                finalColor += diffuseLight * (node_117-(node_117*node_229));
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

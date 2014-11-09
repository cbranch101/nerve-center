// Shader created with Shader Forge Beta 0.36 
// Shader Forge (c) Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:0.36;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,limd:1,uamb:True,mssp:True,lmpd:False,lprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:0,bsrc:0,bdst:0,culm:0,dpts:2,wrdp:True,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:1,x:32719,y:32712|diff-196-RGB,spec-682-RGB,gloss-685-OUT,emission-649-OUT,amdfl-882-RGB,amspl-881-RGB;n:type:ShaderForge.SFN_Tex2d,id:2,x:33837,y:32271,ptlb:Screen Image,ptin:_ScreenImage,tex:efd7e021c4f31ee4894f0df711cc9a94,ntxv:3,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:19,x:33810,y:32609,ptlb:Scanlines,ptin:_Scanlines,tex:f5f09cf8c1c80984dbf03fde029b55ae,ntxv:2,isnm:False|UVIN-107-UVOUT;n:type:ShaderForge.SFN_Add,id:20,x:33138,y:32559|A-2-RGB,B-844-OUT;n:type:ShaderForge.SFN_Multiply,id:21,x:34191,y:32609|A-144-OUT,B-29-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:29,x:34396,y:32769,uv:0;n:type:ShaderForge.SFN_Slider,id:81,x:33810,y:32807,ptlb:Scanlines Brightness,ptin:_ScanlinesBrightness,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Panner,id:107,x:34005,y:32609,spu:0,spv:-1|UVIN-21-OUT;n:type:ShaderForge.SFN_Slider,id:142,x:34592,y:32610,ptlb:Scanlines Tiling,ptin:_ScanlinesTiling,min:1,cur:4,max:7;n:type:ShaderForge.SFN_Negate,id:144,x:34396,y:32609|IN-142-OUT;n:type:ShaderForge.SFN_Color,id:196,x:32780,y:32539,ptlb:Object Color,ptin:_ObjectColor,glob:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Tex2d,id:215,x:33359,y:32975,ptlb:Vignette Image,ptin:_VignetteImage,tex:95ef4804fe0be4c999ddaa383536cde8,ntxv:0,isnm:False|UVIN-243-OUT;n:type:ShaderForge.SFN_Multiply,id:227,x:33172,y:32814|A-20-OUT,B-215-RGB;n:type:ShaderForge.SFN_TexCoord,id:238,x:33854,y:33485,uv:0;n:type:ShaderForge.SFN_Multiply,id:239,x:33854,y:33341|A-384-OUT,B-238-UVOUT;n:type:ShaderForge.SFN_Add,id:243,x:33543,y:32975|A-323-OUT,B-239-OUT;n:type:ShaderForge.SFN_Negate,id:320,x:34215,y:33171|IN-384-OUT;n:type:ShaderForge.SFN_Add,id:321,x:34026,y:33117|A-322-OUT,B-320-OUT;n:type:ShaderForge.SFN_Vector1,id:322,x:34215,y:33117,v1:1;n:type:ShaderForge.SFN_Divide,id:323,x:33854,y:33178|A-321-OUT,B-324-OUT;n:type:ShaderForge.SFN_Vector1,id:324,x:34026,y:33276,v1:2;n:type:ShaderForge.SFN_Slider,id:384,x:34215,y:33427,ptlb:Vignetting,ptin:_Vignetting,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Color,id:464,x:33810,y:32907,ptlb:Scanlines Color,ptin:_ScanlinesColor,glob:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:512,x:33543,y:32834|A-626-OUT,B-464-RGB;n:type:ShaderForge.SFN_Multiply,id:626,x:33615,y:32609|A-19-RGB,B-81-OUT;n:type:ShaderForge.SFN_Multiply,id:649,x:33002,y:32814|A-227-OUT,B-654-RGB;n:type:ShaderForge.SFN_Color,id:654,x:33172,y:32975,ptlb:Screen Image Tint,ptin:_ScreenImageTint,glob:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Color,id:682,x:32881,y:32165,ptlb:Specular Color,ptin:_SpecularColor,glob:False,c1:0.372549,c2:0.5228577,c3:1,c4:1;n:type:ShaderForge.SFN_Slider,id:685,x:33080,y:32138,ptlb:Glossiness,ptin:_Glossiness,min:0,cur:1,max:3;n:type:ShaderForge.SFN_Multiply,id:844,x:33320,y:32608|A-861-OUT,B-512-OUT;n:type:ShaderForge.SFN_Divide,id:861,x:33551,y:32464|A-2-RGB,B-863-OUT;n:type:ShaderForge.SFN_Vector1,id:863,x:33747,y:32508,v1:0.5;n:type:ShaderForge.SFN_SkyshopSpec,id:881,x:32656,y:33236,sprot:True,spblend:True,splmocc:False|GLOSS-685-OUT;n:type:ShaderForge.SFN_SkyshopDiff,id:882,x:33098,y:33148,dfrot:True,dfblend:True,dflmocc:False;proporder:196-2-654-19-464-142-81-215-384-682-685;pass:END;sub:END;*/

Shader "Shader Forge/screen" {
    Properties {
        _ObjectColor ("Object Color", Color) = (0,0,0,1)
        _ScreenImage ("Screen Image", 2D) = "bump" {}
        _ScreenImageTint ("Screen Image Tint", Color) = (1,1,1,1)
        _Scanlines ("Scanlines", 2D) = "black" {}
        _ScanlinesColor ("Scanlines Color", Color) = (1,1,1,1)
        _ScanlinesTiling ("Scanlines Tiling", Range(1, 7)) = 4
        _ScanlinesBrightness ("Scanlines Brightness", Range(0, 1)) = 0.5
        _VignetteImage ("Vignette Image", 2D) = "white" {}
        _Vignetting ("Vignetting", Range(0, 1)) = 0.5
        _SpecularColor ("Specular Color", Color) = (0.372549,0.5228577,1,1)
        _Glossiness ("Glossiness", Range(0, 3)) = 1
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
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
            uniform sampler2D _ScreenImage; uniform float4 _ScreenImage_ST;
            uniform sampler2D _Scanlines; uniform float4 _Scanlines_ST;
            uniform float _ScanlinesBrightness;
            uniform float _ScanlinesTiling;
            uniform float4 _ObjectColor;
            uniform sampler2D _VignetteImage; uniform float4 _VignetteImage_ST;
            uniform float _Vignetting;
            uniform float4 _ScanlinesColor;
            uniform float4 _ScreenImageTint;
            uniform float4 _SpecularColor;
            uniform float _Glossiness;
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
                float2 node_911 = i.uv0;
                float4 node_2 = tex2D(_ScreenImage,TRANSFORM_TEX(node_911.rg, _ScreenImage));
                float4 node_912 = _Time + _TimeEditor;
                float2 node_107 = (((-1*_ScanlinesTiling)*i.uv0.rg)+node_912.g*float2(0,-1));
                float2 node_243 = (((1.0+(-1*_Vignetting))/2.0)+(_Vignetting*i.uv0.rg));
                float3 emissive = (((node_2.rgb+((node_2.rgb/0.5)*((tex2D(_Scanlines,TRANSFORM_TEX(node_107, _Scanlines)).rgb*_ScanlinesBrightness)*_ScanlinesColor.rgb)))*tex2D(_VignetteImage,TRANSFORM_TEX(node_243, _VignetteImage)).rgb)*_ScreenImageTint.rgb);
///////// Gloss:
                float gloss = _Glossiness;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                NdotL = max(0.0, NdotL);
                float3 specularColor = _SpecularColor.rgb;
                float3 specularAmb = marmoMipSpecular(viewReflectDirection, i.posWorld.rgb, _Glossiness).rgb * specularColor;
                float3 specular = (floor(attenuation) * _LightColor0.xyz) * pow(max(0,dot(halfDirection,normalDirection)),specPow) * specularColor + specularAmb;
                float3 finalColor = 0;
                float3 diffuseLight = diffuse;
                diffuseLight += marmoDiffuse(normalDirection).rgb; // Diffuse Ambient Light
                finalColor += diffuseLight * _ObjectColor.rgb;
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
            uniform sampler2D _ScreenImage; uniform float4 _ScreenImage_ST;
            uniform sampler2D _Scanlines; uniform float4 _Scanlines_ST;
            uniform float _ScanlinesBrightness;
            uniform float _ScanlinesTiling;
            uniform float4 _ObjectColor;
            uniform sampler2D _VignetteImage; uniform float4 _VignetteImage_ST;
            uniform float _Vignetting;
            uniform float4 _ScanlinesColor;
            uniform float4 _ScreenImageTint;
            uniform float4 _SpecularColor;
            uniform float _Glossiness;
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
                float gloss = _Glossiness;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                NdotL = max(0.0, NdotL);
                float3 specularColor = _SpecularColor.rgb;
                float3 specular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow) * specularColor;
                float3 finalColor = 0;
                float3 diffuseLight = diffuse;
                finalColor += diffuseLight * _ObjectColor.rgb;
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

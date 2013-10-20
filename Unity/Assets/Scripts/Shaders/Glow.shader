Shader "Ad-Dispatch/Glow/Inverse-Rim" {

    Properties {
        _Color ("Color", Color) = (1,1,1,1)
        _Power ("Power", Range(1.0, 5.0)) = 4.0
    }

    SubShader {
        Tags { "Queue"="Transparent" }
        LOD 200
        ZTest Less
        Cull Back
        Blend One One


        CGPROGRAM
        #pragma surface surf Lambert  

        float4 _Color;
		float _Power;

        struct Input {
            float3 viewDir;
            float3 worldNormal;
        };

 
        void surf (Input IN, inout SurfaceOutput o) {
        
            o.Alpha = _Color.a * pow(abs(dot(normalize(IN.viewDir),
                normalize(IN.worldNormal))), _Power);
            o.Emission = _Color.rgb * o.Alpha;

        }
        
        ENDCG
        
    } 

    FallBack "Diffuse"
}
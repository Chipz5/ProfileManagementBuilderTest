DXBCЄЬу'ЁS”їsҐё@г1Я   »G     8   Д   Є   м   D  ј  RDEFD                   ю€A    Microsoft (R) HLSL Shader Compiler 10.1 ISGN,                              POSITION ЂЂЂOSGN,                              SV_POSITION SHDRP   @     _  r     g  т         6  r      F     6  В      @    А?>  STATt                                                                                                                   SPDB F  Microsoft C/C++ MSF 7.00
DS         #   і       !                                                                                                                                                                                                                                                                                                                                                                                                                                                                           ј€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€8   ь€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€       <       €€€€                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         Ф.1ћТ¶a   5\меb FњсgkУ÷З                          №Q3                                                                                                                                                                                                                                                                                                                                                                                                                                                                    D3DSHDR P                              `                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        Lи A$ ∆Z  •У PЕ 4                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        /*
	This vertex shader is used to create a Direct3D vertex input layout object
*/

#include <Shaders/shaders.inc>

#if defined( EAE6320_PLATFORM_D3D )

// Entry Point
//============

void main(

	// Input
	//======

	// The "semantics" (the keywords in all caps after the colon) are arbitrary,
	// but must match the C call to CreateInputLayout()

	// These values come from one of the VertexFormats::sVertex_mesh that the vertex buffer was filled with in C code
	in const float3 i_position : POSITION,

	// Output
	//=======

	// An SV_POSITION value must always be output from every vertex shader
	// so that the GPU can figure out which fragments need to be shaded
	out float4 o_position : SV_POSITION

)
{
	// The shader program is only used to generate a vertex input layout object;
	// the actual shading code is never used
	o_position = float4( i_position, 1.0 );
}

#elif defined( EAE6320_PLATFORM_GL )

// Input
//======

// The locations assigned are arbitrary
// but must match the C calls to glVertexAttribPointer()

// These values come from one of the VertexFormats::sVertex_mesh that the vertex buffer was filled with in C code
layout( location = 0 ) in vec3 i_position;

// Output
//=======

// The vertex shader must always output a position value,
// but unlike HLSL where the value is explicit
// GLSL has an automatically-required variable named "gl_Position"

// Entry Point
//============

void main()
{
	// The shader program is only used by Direct3D
	gl_Position = vec4( i_position, 1.0 );
}

#endif
                                                                                                                                                                                                                                                                                                                                                                                                                                                                            /*
	This file should be #included by all shaders
*/

// Version Information
//====================

#if defined( EAE6320_PLATFORM_GL )

	// GLSL shaders require the version to be #defined before anything else in the shader
	#version 420

#endif

// Constant Buffers
//=================

#if defined( EAE6320_PLATFORM_D3D )

	#define DeclareConstantBuffer( i_name, i_id ) cbuffer i_name : register( b##i_id )
	#define FLOAT4x4 float4x4
	#define FLOAT2 float2
	#define FLOAT4 float4

#elif defined( EAE6320_PLATFORM_GL )

	#define DeclareConstantBuffer( i_name, i_id ) layout( std140, binding = i_id ) uniform i_name
	#define FLOAT4x4 mat4
	#define FLOAT2 vec2
	#define FLOAT4 vec4
#endif

DeclareConstantBuffer( g_constantBuffer_frame, 0 )
{
	FLOAT4x4 g_transform_worldToCamera;
	FLOAT4x4 g_transform_cameraToProjected;
	float g_elapsedSecondCount_systemTime;
	float g_elapsedSecondCount_simulationTime;
	// For float4 alignment
	FLOAT2 g_padding;
};

DeclareConstantBuffer( g_constantBuffer_drawCall , 2 )
{
	FLOAT4x4 g_transform_localToWorld;
};













                                                                                                                                                                                                                                                                                                                                                                                                                                 юпюп   µ   C:\Users\shilp\Documents\EAE-3\GameEng\Assignment\thomasshilpa\Engine\Content\shaders\vertex\vertexinputlayout_mesh.shader  c:\users\shilp\documents\eae-3\gameeng\assignment\thomasshilpa\engine\content\shaders\vertex\vertexinputlayout_mesh.shader Shaders/shaders.inc shaders\shaders.inc /*
	This vertex shader is used to create a Direct3D vertex input layout object
*/

#include <Shaders/shaders.inc>

#if defined( EAE6320_PLATFORM_D3D )

// Entry Point
//============

void main(

	// в0ђ   БЕ3l.ж„                                                                 (   в0'™._  ш   |                 }   (   в0‘wѕ4     |   }                                                                                                                                                                                                                                                                                                                                                                      B <   
  daJ
  daJMicrosoft (R) HLSL Shader Compiler 10.1   ^ =hlslFlags 0x44005 hlslTarget vs_4_0 hlslEntry main hlslDefines  /DEAE6320_PLATFORM_D3D     *     д      ,       ,     $    †main 2 >  	 i_position                                 P     $    ,      P    $    ,     P    $    ,    2 >  	 o_position                                 P     $    ,      P    $    ,     P    $    ,     P    $    ,      ф   0      ™Ѕ	C£й5fЭОС3#R  ш   94∞ќ5FtћL_q†чpTI  т   `         P          T   $   "  А$   "   8   "  А8   "   L   #  АL   #    (  '  (  '     ц                                                                                                                                                                                                                                                                                                                                                                                      18        h    €€   €€                       @       float3 утс
       @       float4 утс        
                                                                                                                                                                                                                                                                                                                                                                              18              €€   €€                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 €€€€	/с                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    %    ®    main          €€€€	/с                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       €€€€	/с                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            Input
	//======

	// The "semantics" (the keywords in all caps after the colon) are arbitrary,
	// but must match the C call to CreateInputLayout()

	// These values come from one of the VertexFormats::sVertex_mesh that the vertex buffer was filled with in C code
	in const float3 i_position : POSITION,

	// Output
	//=======

	// An SV_POSITION value must always be output from every vertex shader
	// so that the GPU can figure out which fragments need to be shaded
	out float4 o_position : SV_P€€€€w	1     О ?\   L       ,   †                                    P      `             
 и      ђ    бѕ            main none   -Ї.с       P      `                    €€€€    P         €€€€    €€€€         {   C:\Users\shilp\Documents\EAE-3\GameEng\Assignment\thomasshilpa\Engine\Content\shaders\vertex\vertexinputlayout_mesh.shader Shaders/shaders.inc  юпюп                  €€€€€€€€€€ €€€€€€€€€€                                                                                         OSITION

)
{
	// The shader program is only used to generate a vertex input layout object;
	// the actual shading code is never used
	o_position = float4( i_position, 1.0 );
}

#elif defined( EAE6320_PLATFORM_GL )

// Input
//======

// The locations assigned are arbitrary
// but must match the C calls to glVertexAttribPointer()

// These values come from one of the VertexFormats::sVertex_mesh that the vertex buffer was filled with in C code
layout( location = 0 ) in vec3 i_position;

// Output
//=======

// The vertex shader must always output a position value,
// but unlike HLSL where the value is explicit
// GLSL has an automatically-required variable named "gl_Position"

// Entry Point
//============

void main()
{
	// The shader program is only used by Direct3D
	gl_Position = vec4( i_position, 1.0 );
}

#endif
 /*
	This file should be #included by all shaders
*/

// Version Information
//====================

#if defined( EAE6320_PLATFORM_GL )

	// GLSL shaders require the version to be #defined before anything else in the shader
	#version 420

#endif

// Constant Buffers
//=================

#if defined( EAE6320_PLATFORM_D3D )

	#define DeclareConstantBuffer( i_name, i_id ) cbuffer i_name : register( b##i_id )
	#define FLOAT4x4 float4x4
	#define FLOAT2 float2
	#define FLOAT4 float4

#elif defined( EAE6320_PLATFORM_GL )

	#define DeclareConstantBuffer( i_name, i_id ) layout( std140, binding = i_id ) uniform i_name
	#define FLOAT4x4 mat4
	#define FLOAT2 vec2
	#define FLOAT4 vec4
#endif

DeclareConstantBuffer( g_constantBuffer_frame, 0 )
{
	FLOAT4x4 g_transform_worldToCamera;
	FLOAT4x4 g_transform_cameraToProjected;
	float g_elapsedSecondCount_systemTime;
	float g_elapsedSecondCount_simulationTime;
	// For float4 alignment
	FLOAT2 g_padding;
};

DeclareConstantBuffer( g_constantBuffer_drawCall , 2 )
{
	FLOAT4x4 g_transform_localToWorld;
};













    }   |           U                  ш                 Ф.1ћТ¶a   5\меb FњсgkУ÷З«   /LinkInfo /names /src/headerblock /src/files/c:\users\shilp\documents\eae-3\gameeng\assignment\thomasshilpa\engine\content\shaders\vertex\vertexinputlayout_mesh.shader /src/files/shaders\shaders.inc    
      >             "             ®   	   
          №Q3                                                                                                                                                                                                                            +  †   І  8       х  ђ   4  _  Ь          (      ,                                             	   
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
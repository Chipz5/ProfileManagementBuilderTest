DXBCrкR$ћШџ*82I   x\     8   Р  ƒ  ш  ф  p  RDEFP     Р          ю€A %  \                             s                            g_constantBuffer_frame g_constantBuffer_drawCall ЂЂЂ\      ј   Р           s      ф  @           8      @      T      d  @   @      T      В  А          §      і  Д          §      Ў  И          д      g_transform_worldToCamera ЂЂ            g_transform_cameraToProjected g_elapsedSecondCount_systemTime ЂЂ             g_elapsedSecondCount_simulationTime g_padding ЂЂ                  @      T      g_transform_localToWorld Microsoft (R) HLSL Shader Compiler 10.1 ЂЂЂISGN,                              POSITION ЂЂЂOSGN,                              SV_POSITION SHDRф  @  љ   Y  FО         Y  FО        _  r     g  т         h     6  r      F     6  В      @    А?8  т           FО         8  т     V     FО           т     F    F    8  т     ¶
     FО           т     F    F    8  т      ц     FО           т      F     F    8  т           FО          8  т     V     FО            т     F    F    8  т     ¶
     FО            т     F    F    8  т      ц     FО            т      F     F    8  т           FО         8  т     V     FО            т     F    F    8  т     ¶
     FО            т     F    F    8  т      ц     FО            т      F     F    >  STATt                                                                                                                 SPDB V  Microsoft C/C++ MSF 7.00
DS         +   Ў       *                                                                                                                                                                                                                                                                                                                                                                                                                                                                           ј€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€8    ш€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€       <       €€€€                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         Ф.1ћТ¶a   м°ќWДЗAҐj°ьS„К                          №Q3                                                                                                                                                                                                                                                                                                                                                                                                                                                                    D3DSHDR ф                             `                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        Lи A$ ∆Z  •У PЕ 4 gЯ 1ы …Њ                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             /*
	This is the standard vertex shader

	A vertex shader is responsible for two things:
		* Telling the GPU where the vertex (one of the three in a triangle) should be drawn on screen in a given window
			* The GPU will use this to decide which fragments (i.e. pixels) need to be shaded for a given triangle
		* Providing any data that a corresponding fragment shader will need
			* This data will be interpolated across the triangle and thus vary for each fragment of a triangle that gets shaded
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
	in const float3 i_vertexPosition_local : POSITION,

	// Output
	//=======

	// An SV_POSITION value must always be output from every vertex shader
	// so that the GPU can figure out which fragments need to be shaded
	out float4 o_vertexPosition_projected : SV_POSITION

)
{
	// Transform the local vertex into world space
	float4 vertexPosition_world;
	{
		// This will be done in a future assignment.
		// For now, however, local space is treated as if it is the same as world space.
		float4 vertexPosition_local = float4( i_vertexPosition_local, 1.0 );
		vertexPosition_world = mul(g_transform_localToWorld, vertexPosition_local);
	}
	// Calculate the position of this vertex projected onto the display
	{
		// Transform the vertex from world space into camera space
		float4 vertexPosition_camera = mul( g_transform_worldToCamera, vertexPosition_world );
		// Project the vertex from camera space into projected space
		o_vertexPosition_projected = mul( g_transform_cameraToProjected, vertexPosition_camera );
	}
}

#elif defined( EAE6320_PLATFORM_GL )



// Input
//======

// The locations assigned are arbitrary
// but must match the C calls to glVertexAttribPointer()

// These values come from one of the VertexFormats::sVertex_mesh that the vertex buffer was filled with in C code
layout( location = 0 ) in vec3 i_vertexPosition_local;

// Output
//=======

// The vertex shader must always output a position value,
// but unlike HLSL where the value is explicit
// GLSL has an automatically-required variable named "gl_Position"

// Entry Point
//============

void main()
{
	// Transform the local vertex into world space
	vec4 vertexPosition_world;
	{
		// This will be done in a future assignment.
		// For now, however, local space is treated as if it is the same as world space.
		vec4 vertexPosition_local = vec4( i_vertexPosition_local, 1.0 );
		vertexPosition_world = vertexPosition_local;
	}
	// Calculate the position of this vertex projected onto the display
	{
		// Transform the vertex from world space into camera space
		vec4 vertexPosition_camera = g_transform_worldToCamera * vertexPosition_world;
		// Project the vertex from camera space into projected space
		gl_Position = g_transform_cameraToProjected * vertexPosition_camera;
	}
}

#endif
                                                                                                                                                                                                                                                                                                                                          /*
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













                                                                                                                                                                                                                                                                                                                                                                                                                                 юпюп      C:\Users\shilp\Documents\EAE-3\GameEng\Assignment\thomasshilpa\Engine\Content\shaders\vertex\standard.shader  c:\users\shilp\documents\eae-3\gameeng\assignment\thomasshilpa\engine\content\shaders\vertex\standard.shader Shaders/shaders.inc shaders\shaders.inc /*
	This is the standard vertex shader

	A vertex shader is responsible for two things:
		* Telling the GPU where the vertex (one of the three in a triangle) should be drawn on screen in a given window
			* The GPU will use this to decв0ђ   Ль#l.ж„                                                        	       р   (   в0'™._  №   n   р               o   (   в0R4†>ґ     n   o                                                                                                                                                                                                                                                                                                                                                                      B <   
  daJ
  daJMicrosoft (R) HLSL Shader Compiler 10.1   ^ =hlslFlags 0x44005 hlslTarget vs_4_0 hlslEntry main hlslDefines  /DEAE6320_PLATFORM_D3D     *     Ў      ®      ®    L    †main > >  	 i_vertexPosition_local                                 P     L    ®     P    L    ®    P    L    ®   B >  	 o_vertexPosition_projected                                 P     L    ®     P    L    ®    P    L    ®    P    L    ®   : >   vertexPosition_world                               P      H   Є      P     H   Є     P     H   Є     P     H   Є    : >   vertexPosition_local                               P      `    ћ      P     `    ћ     P     `    ћ     P     t    Є    > >   vertexPosition_camera                                  P         Є      P        Є     P        Є     P        Є      ф   0      ВЯЩ,~]/'6 ЕosЂ  №   94∞ќ5FtћL_q†чpTI  т   X        ф      0   L  L   ,  АL   ,   `   ,  А`   ,   t   -  Аt   -   Ф   -  АФ   -   і   -  Аі   -   –   -  А–   -   р   -  Ар   -     -  А  -   ,  -  А,  -   H  2  АH  2   h  2  Аh  2   И  2  АИ  2   §  2  А§  2   ƒ  2  Аƒ  2   а  2  Аа  2      2  А   2     4  А  4   <  4  А<  4   \  4  А\  4   x  4  Аx  4   Ш  4  АШ  4   і  4  Аі  4   ‘  4  А‘  4   р  6  Ар  6    F 
 E  F 
 E  M  L  M  L  M  L  M  L  M  L  M  L  M  L  X " W  X " W  X " W  X " W  X " W  X " W  X " W  [   Z  [   Z  [   Z  [   Z  [   Z  [   Z  [   Z     ц                    D   x                                                                                                                                                                                                                                                                                                                                                                                18      	  †    €€   €€     $   $      ,        @       float3 утс
       @       float4 утс        
              @             @ float4x4 
     
                                                                                                                                                                                                                                                                                                              18              €€   €€                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 €€€€	/с      E                  y                                                                                                                                                                                                             @                                                                                                                                                                                                                                                                                                                                    $                                                                                                                                                                                                                                                                                                                                                                                                                                                                %    ®    main  . Q       €€€€€€g_transform_worldToCamera   2 Q     @ €€€€€€g_transform_cameraToProjected   . Q      €€€€€€g_transform_localToWorld                                                                                                                                                                                                                                                                                                                                                                                       €€€€	/с                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            ide which fragments (i.e. pixels) need to be shaded for a given triangle
		* Providing any data that a corresponding fragment shader will need
			* This data will be interpolated across the triangle and thus vary for each fragment of a triangle that gets shaded
*/

#include <Shaders/shaders.inc>

#if defined( EAE6320_PLATFORM_D3D )


// Entry Point
//============

void main(

	// Input
	//======

	// The "semantics" (the keywords in all caps after the colon) are arbitrary,
	// but must ma€€€€w	1     О ?\   L       ,   Ф                                    ф     `             
 №      §   Б            main none   -Ї.с       ф     `                    €€€€    ф        €€€€    €€€€         m   C:\Users\shilp\Documents\EAE-3\GameEng\Assignment\thomasshilpa\Engine\Content\shaders\vertex\standard.shader Shaders/shaders.inc    юпюп                  €€€€€€€€€€ €€€€€€€€€€                                                                                                     tch the C call to CreateInputLayout()

	// These values come from one of the VertexFormats::sVertex_mesh that the vertex buffer was filled with in C code
	in const float3 i_vertexPosition_local : POSITION,

	// Output
	//=======

	// An SV_POSITION value must always be output from every vertex shader
	// so that the GPU can figure out which fragments need to be shaded
	out float4 o_vertexPosition_projected : SV_POSITION

)
{
	// Transform the local vertex into world space
	float4 vertexPosition_world;
	{
		// This will be done in a future assignment.
		// For now, however, local space is treated as if it is the same as world space.
		float4 vertexPosition_local = float4( i_vertexPosition_local, 1.0 );
		vertexPosition_world = mul(g_transform_localToWorld, vertexPosition_local);
	}
	// Calculate the position of this vertex projected onto the display
	{
		// Transform the vertex from world space into camera space
		float4 vertexPosition_camera = mul( g_transform_worldToCamera, vertexPosition_world );
		// Project the vertex from camera space into projected space
		o_vertexPosition_projected = mul( g_transform_cameraToProjected, vertexPosition_camera );
	}
}

#elif defined( EAE6320_PLATFORM_GL )



// Input
//======

// The locations assigned are arbitrary
// but must match the C calls to glVertexAttribPointer()

// These values come from one of the VertexFormats::sVertex_mesh that the vertex buffer was filled with in C code
layout( location = 0 ) in vec3 i_vertexPosition_local;

// Output
//=======

// The vertex shader must always output a position value,
// but unlike HLSL where the value is explicit
// GLSL has an automatically-required variable named "gl_Position"

// Entry Point
//============

void main()
{
	// Transform the local vertex into world space
	vec4 vertexPosition_world;
	{
		// This will be done in a future assignment.
		// For now, however, local space is treated as if it is the same as world space.
		vec4 vertexPosition_local = vec4( i_vertexPosition_local, 1.0 );
		vertexPosition_world = vertexPosition_local;
	}
	// Calculate the position of this vertex projected onto the display
	{
		// Transform the vertex from world space into camera space
		vec4 vertexPosition_camera = g_transform_worldToCamera * vertexPosition_world;
		// Project the vertex from camera space into projected space
		gl_Position = g_transform_cameraToProjected * vertexPosition_camera;
	}
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













    №   n   ї  р                        o                                                                                                                                                                                                                                                                                                                                                                                                                                           Ф.1ћТ¶a   м°ќWДЗAҐj°ьS„Кє   /LinkInfo /names /src/headerblock /src/files/c:\users\shilp\documents\eae-3\gameeng\assignment\thomasshilpa\engine\content\shaders\vertex\standard.shader /src/files/shaders\shaders.inc    
      Ѓ       Ъ   	                
      "          №Q3                                                                                                                                                                                                                                            Ў   Ы  8       [  ђ   ґ  _  Ф  ,       (   D  ,   ®      (                      !   "   #   $   %   &   '         	   
                                                                                                                                                                                                                                                                                                                                                              )                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
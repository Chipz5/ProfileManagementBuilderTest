DXBC*k©т¶,ЂШаuДфMцµ>   аI     8     <  p  \  Ў  RDEF»     T          €€A †  <                             g_constantBuffer_frame Ђ<      l   Р           д       @                @   @              .  А          P      `  Д         P      Д  И          Р      g_transform_worldToCamera ЂЂ            g_transform_cameraToProjected g_elapsedSecondCount_systemTime ЂЂ             g_elapsedSecondCount_simulationTime g_padding ЂЂ            Microsoft (R) HLSL Shader Compiler 10.1 ISGN,                              SV_POSITION OSGN,                               SV_TARGET ЂЂSHDRд   @   9   Y  FО      	   e  т      h     :  6  2      @    А?  А?        M  B       –  А         8  В      А         @     ?M  В       –  :      6        *      6  "      :      6  ¬           >  STATt   	                                                                                                              SPDB F  Microsoft C/C++ MSF 7.00
DS         #   Є       "                                                                                                                                                                                                                                                                                                                                                                                                                                                                           ј€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€8   ш€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€       <       €€€€                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         Ф.1ћТ¶a   «∆І\№ыE≤нЩ•ѓqx                          №Q3                                                                                                                                                                                                                                                                                                                                                                                                                                                                     18            €€   €€                            setColor утс                                                                                                                                                                                                                                                                                                                                                                                                                                                ∆Z  A$ Ґ≤ PЕ Йз ` ƒ Тж …Њ                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             /*
	This is the standard fragment shader

	A fragment shader is responsible for telling the GPU what color a specific fragment should be
*/

#include <Shaders/shaders.inc>


void setColor(out FLOAT4 o_color) {
	// Output solid white
	o_color = FLOAT4(
		// RGB (color)
		1.0, 1.0, 1.0,
		// Alpha (opacity)
		1.0);
	o_color.r = sin(g_elapsedSecondCount_simulationTime);
	o_color.g = sin(g_elapsedSecondCount_simulationTime * 0.5);
}
#if defined( EAE6320_PLATFORM_D3D )
// Entry Point
//============

void main(

	// Input
	//======

	in const float4 i_fragmentPosition : SV_POSITION,

	// Output
	//=======

	// Whatever color value is output from the fragment shader
	// will determine the color of the corresponding pixel on the screen
	out float4 o_color : SV_TARGET

)
{
	// Output solid white
	setColor(o_color);
}

#elif defined( EAE6320_PLATFORM_GL )


// Output
//=======

// Whatever color value is output from the fragment shader
// will determine the color of the corresponding pixel on the screen
out vec4 o_color;

// Entry Point
//============

void main()
{
	// Output solid white
	setColor(o_color);
}

#endif

                                                                                                                                                                                                                                                                                                                                                         /*
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













                                                                                                                                                                                                                                                                                                                                                                                                                                 юпюп   
   C:\Users\shilp\Documents\EAE-3\GameEng\Assignment\thomasshilpa\MyGame_\Content\shaders\fragment\myshader1.shader  c:\users\shilp\documents\eae-3\gameeng\assignment\thomasshilpa\mygame_\content\shaders\fragment\myshader1.shader Shaders/shaders.inc shaders\shaders.inc /*
	This is the standard fragment shader

	A fragment shader is responsible for telling the GPU what color a specific fragment should be
*/

#include <Shaders/shaders.inc>


void setColor(out FLOAT4 o_color) {
	// Output sв0ђ   x0l.ж„                                                        	       ш   (   в0'™._  д   r   ш               s   (   в0ћЫTWІ     r   s                                                                                                                                                                                                                                                                                                                                                                      B <   
  daJ
  daJMicrosoft (R) HLSL Shader Compiler 10.1   ^ =hlslFlags 0x44005 hlslTarget ps_4_0 hlslEntry main hlslDefines  /DEAE6320_PLATFORM_D3D     *     а      Є       Є     ,    †main : >  	 i_fragmentPosition                                 P     ,    Є      P    ,    Є     P    ,    Є     P    ,    Є    . >   	 o_color                                P     ,    Є      P    ,    Є     P    ,    Є     P    ,    Є    J M®   №     	D 6
 <8 0  	5
 	:	; . >   	 o_color                                P     P    h      P     P    h     P      l    L     P     §         N  ф   0      %|+ЦєСEт[нm)≤	  д   94∞ќ5FtћL_q†чpTI  т   р         д          д   ,   )  А,   )   0   )  А0   )   P   )  АP   )   l   )  Аl   )   М   )  АМ   )   §   )  А§   )   Є   )  АЄ   )   ћ   )  Аћ   )   а   *  Аа   *                                       ц                 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      18      	  Д    €€   €€     $   $      ,        @       float4 утс
               
             
              
 @     
                                                                                                                                                                                                                                                                                                                                          н               €€€€   €€     €€€€    €€€€    €€€€ @       float4 утс
               
             
              
 @     
                                                                                                                                                                                                                                                                                                                                         D3DSHDR д                              `                    setColor утс                                                                                                                                                                                                                                                                                                                                                                                                                                                €€€€	/с                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                %    ®    main  6 Q     Д €€€€€€g_elapsedSecondCount_simulationTime                                                                                                                                                                                                                                                                                                                                                                                                                                                                                €€€€	/с                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            olid white
	o_color = FLOAT4(
		// RGB (color)
		1.0, 1.0, 1.0,
		// Alpha (opacity)
		1.0);
	o_color.r = sin(g_elapsedSecondCount_simulationTime);
	o_color.g = sin(g_elapsedSecondCount_simulationTime * 0.5);
}
#if defined( EAE6320_PLATFORM_D3D )
// Entry Point
//============

void main(

	// Input
	//======

	in const float4 i_fragmentPosition : SV_POSITION,

	// Output
	//=======

	// Whatever color value is output from the fragment shader
	// will determine the color of the corres€€€€w	1     О ?\   L       ,   Ш                                    д      `             
 д      H   ЊД            main none   -Ї.с       д      `                    €€€€    д         €€€€    €€€€         q   C:\Users\shilp\Documents\EAE-3\GameEng\Assignment\thomasshilpa\MyGame_\Content\shaders\fragment\myshader1.shader Shaders/shaders.inc    юпюп                  €€€€€€€€€€ €€€€€€€€€€                                                                                                 ponding pixel on the screen
	out float4 o_color : SV_TARGET

)
{
	// Output solid white
	setColor(o_color);
}

#elif defined( EAE6320_PLATFORM_GL )


// Output
//=======

// Whatever color value is output from the fragment shader
// will determine the color of the corresponding pixel on the screen
out vec4 o_color;

// Entry Point
//============

void main()
{
	// Output solid white
	setColor(o_color);
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













       r   s   ш   і                    д                                                                                                                                                                                                                                                                                                                                                                                                                                                  Ф.1ћТ¶a   «∆І\№ыE≤нЩ•ѓqxљ   /LinkInfo /names /src/headerblock /src/files/c:\users\shilp\documents\eae-3\gameeng\assignment\thomasshilpa\mygame_\content\shaders\fragment\myshader1.shader /src/files/shaders\shaders.inc    
      Ѓ       Ю   	                
      "          №Q3                                                                                                                                                                                                                                      !  Љ   Я  P       T
  ђ   І  _  8  ,      (   ,  ,   L                                           	   
                                                                                                                                                                                                                                                                                                                                                                                  !                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
//****************************************************************************
// PBNIADD.h
// Main header file for this PBNI Extension module.
//****************************************************************************

#ifndef PBNIADD_H
  #define PBNIADD_H

#include <windows.h>
#include <C:\Program Files\Sybase\PowerBuilder 9.0\SDK\PBNI\include\pbext.h> // PBNI extension definitions.





BOOL WINAPI DllMain
(
  HANDLE hInst, 
  ULONG ul_reason_for_call,
  LPVOID lpReserved
);

PBXEXPORT LPCTSTR PBXCALL PBX_GetDescription();

PBXEXPORT PBXRESULT PBXCALL PBX_CreateNonVisualObject
(
	IPB_Session*			pbsession,
	pbobject				pbobj,
	LPCTSTR					ClassName,
	IPBX_NonVisualObject	**obj
);







#endif


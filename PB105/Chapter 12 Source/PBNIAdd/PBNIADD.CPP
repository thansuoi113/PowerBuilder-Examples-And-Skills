//****************************************************************************
// PBNIADD.cpp
// Main source file for this PBNI Extension module.
//****************************************************************************

#include "PBNIADD.h"
#include "PBAdd.H"





BOOL WINAPI DllMain
(
  HANDLE hInst, 
  ULONG ul_reason_for_call,
  LPVOID lpReserved
)
{
  return TRUE;
}





// PBX_GetDescription() will be called by PowerBuilder to
// perform registration of the PBNI classes defined within this PBNI Extension.
PBXEXPORT LPCTSTR PBXCALL PBX_GetDescription()
{
  static const TCHAR class_descs[] = 
  {
    "class PBAdd from nonvisualobject\n"
	// TODO : Add in your PBNI class functions here.
	"function long SampleMethod1()\n"
	"function long SampleMethod2()\n"
	"end class\n" 
  };

  return class_descs;
}





// PBX_CreateNonVisualObject() will be called by PowerBuilder to
// create an instance of a specific Non Visual PBNI Extension Object identified by
// "LPCTSTR ClassName".
PBXEXPORT PBXRESULT PBXCALL PBX_CreateNonVisualObject
(
	IPB_Session*			pbsession,
	pbobject				pbobj,
	LPCTSTR					ClassName,
	IPBX_NonVisualObject	**obj
)
{
  PBXRESULT pbxResult = PBX_OK;

  // TODO : Instantiate "obj" and return it through this function.
  if (stricmp(ClassName, TEXT("PBAdd")) == 0)
  {
    CPBAdd* pCPBAdd = NULL;
    pCPBAdd = new CPBAdd(pbsession, pbobj);
    *obj = (IPBX_NonVisualObject*)pCPBAdd;
  }
  else
  {
    *obj = NULL;
    pbxResult = PBX_E_NO_SUCH_CLASS;
  }

  return pbxResult;
}























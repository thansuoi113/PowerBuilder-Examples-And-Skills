// DllForPB9.h : main header file for the DLLFORPB9 DLL
//

#if !defined(AFX_DLLFORPB9_H__7E8B96B9_9152_470F_AAF1_C49C5DFCF5E3__INCLUDED_)
#define AFX_DLLFORPB9_H__7E8B96B9_9152_470F_AAF1_C49C5DFCF5E3__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"		// main symbols

/////////////////////////////////////////////////////////////////////////////
// CDllForPB9App
// See DllForPB9.cpp for the implementation of this class
//

class CDllForPB9App : public CWinApp
{
public:
	CDllForPB9App();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CDllForPB9App)
	//}}AFX_VIRTUAL

	//{{AFX_MSG(CDllForPB9App)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_DLLFORPB9_H__7E8B96B9_9152_470F_AAF1_C49C5DFCF5E3__INCLUDED_)

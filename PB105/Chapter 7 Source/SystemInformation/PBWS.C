/*******************************************************************************
*                                                                              *
*   FILE:                 pbws.c
*                                                                              *
*   DESCRIPTION:          DLL wrapper around Winsock library routines that
*                         PB can't access directly
*                                                                              *
********************************************************************************/
#include <windows.h>
#include <winsock.h>

//************************************************************* prototypes *
LPSTR FAR _export PASCAL GetHost( LPSTR lpszHost, LPSTR lpszAddr);
u_short FAR _export PASCAL GetService( LPSTR lpszService, LPSTR lpszProto);

//*************************************************************************
// GetService()                                                              *
//*************************************************************************
u_short FAR _export PASCAL GetService( LPSTR lpszService, LPSTR lpszProto)
{
  struct servent *s;

  s = getservbyname(lpszService, lpszProto);
  if (!s)
	 return NULL;
  else
	 return s->s_port;
}

//*************************************************************************
// GetHost()                                                              *
//*************************************************************************
LPSTR FAR _export PASCAL GetHost( LPSTR lpszHost, LPSTR lpszAddr)
{
  int i;
  LPHOSTENT lphostent;

  if (*lpszHost >= '0' && *lpszHost <= '9') { // we got an address
	  *(unsigned long *)lpszAddr = inet_addr( lpszHost );
	  return lpszHost;
  }

  // got to do the look up
  lphostent = gethostbyname( lpszHost );
  if (lphostent == NULL)
	 return "";

  for(i=0;i<sizeof(IN_ADDR);i++)
	 *(lpszAddr+i) = lphostent->h_addr[i];
  return lphostent->h_name;
}

//*************************************************************************
// LibMain()                                                              *
//*************************************************************************

int FAR PASCAL LibMain (HANDLE hInstance, WORD wDataSeg, WORD wHeapSize,
			LPSTR lpszCmdLine)
{
	if (wHeapSize > 0)
		UnlockData(0);

	return(TRUE);
}


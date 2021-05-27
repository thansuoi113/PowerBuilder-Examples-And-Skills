

#include "PBNIADD.H"
#include "PBAdd.H"





CPBAdd::CPBAdd()
{
	// Default constructor for CPBAdd.
}





CPBAdd::CPBAdd(IPB_Session* pIPB_Session, pbobject pbobj)
{
    // Constructor for CPBAdd.
	m_pIPB_Session = pIPB_Session;
	m_pbobject = pbobj;
}





CPBAdd::~CPBAdd()
{
	// Destructor for CPBAdd.
}



// Object Self destruction
void CPBAdd::Destroy()
{ 
	delete this;
}


// IPBX_UserObject method.
PBXRESULT CPBAdd::Invoke
(
  IPB_Session	*session, 
  pbobject	obj, 
  pbmethodID	mid,
  PBCallInfo	*ci
)
{
  PBXRESULT pbrRet = PBX_E_INVOKE_FAILURE; // First assume function associated with "mid" is not found.

  if (mid == mid_SampleMethod1)
  {
    pbrRet = (PBXRESULT)SampleMethod1
    (
      (IPB_Session*)session, 
	  (pbobject)obj, 
	  (PBCallInfo*)ci
    );
  }

  if (mid == mid_SampleMethod2)
  {
    pbrRet = (PBXRESULT)SampleMethod2
    (
      (IPB_Session*)session, 
	  (pbobject)obj, 
	  (PBCallInfo*)ci
    );
  }

  return pbrRet;
}




// PB callable CPBAdd method.
PBXRESULT CPBAdd::SampleMethod1
(
  IPB_Session	*session, 
  pbobject	obj, 
  PBCallInfo	*ci
)
{
  PBXRESULT pbrRet = PBX_OK;

  // Perform the logic of SampleMethod1() and return a long value to PowerScript
  // via the IPBValue::SetLong() method.
  ci -> returnValue -> SetLong((pblong)(10*20));

  return pbrRet;
}





// PB callable CPBAdd method.
PBXRESULT CPBAdd::SampleMethod2
(
  IPB_Session	*session, 
  pbobject	obj, 
  PBCallInfo	*ci
)
{
  PBXRESULT pbrRet = PBX_OK;

  // Perform the logic of SampleMethod2() and return a long value to PowerScript
  // via the IPBValue::SetLong() method.
  ci -> returnValue -> SetLong((pblong)0);

  return pbrRet;
}












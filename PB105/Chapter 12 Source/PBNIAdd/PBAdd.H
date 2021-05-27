
#ifndef PBAdd_H
  #define PBAdd_H

#include <C:\Program Files\Sybase\PowerBuilder 9.0\SDK\PBNI\include\pbext.h>





// All PBXtras must derive from IPBX_NonVisualObject.
// i.e. it must implement the IPBX_NonVisualObject interface methods.




class CPBAdd : public IPBX_NonVisualObject
{
  enum MethodIDs
  {
    mid_SampleMethod1 = 0,
	mid_SampleMethod2 = 1
  };
  virtual void Destroy();

public:
  CPBAdd();
  CPBAdd(IPB_Session* pIPB_Session, pbobject pbobj);
  ~CPBAdd();

  // IPBX_UserObject methods.
  PBXRESULT Invoke
  (
    IPB_Session	*session, 
	pbobject	obj, 
	pbmethodID	mid,
	PBCallInfo	*ci
  );

 
protected:
  PBXRESULT SampleMethod1
  (
    IPB_Session	*session, 
	pbobject	obj, 
	PBCallInfo	*ci
  );

  PBXRESULT SampleMethod2
  (
    IPB_Session	*session, 
	pbobject	obj, 
	PBCallInfo	*ci
  );

protected :
  IPB_Session*		m_pIPB_Session;  // The PBSession in which this object is created.
  pbobject			m_pbobject;	// The corresponding PB object.
  
};





#endif


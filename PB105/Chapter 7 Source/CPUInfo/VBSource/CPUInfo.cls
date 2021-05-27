VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "CpuInfo"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
'***********************************************************\
'NOTES:

'YOU MUST HAVE WMI SDK INSTALLED.  YOU CAN GET IT AT
'http://msdn.microsoft.com/downloads/sdks/wmi/default.asp
'***********************************************************************

Private asCpuPaths() As String
Private m_objCPUSet As SWbemObjectSet
Private m_objWMINameSpace As SWbemServices
Option Explicit
Private Function AvailabilityToString(Code As Integer) As String
Dim sAns As String

Select Case Code
    Case 1, 2
        sAns = "Unknown"
    Case 3
        sAns = "Running/Full Power"
    Case 4
        sAns = "Warning"
    Case 5
        sAns = "In Test"
    Case 6
        sAns = "Not Applicable"
    Case 7
        sAns = "Power Off"
    Case 8
        sAns = "Off Line"
    Case 9
        sAns = "Off Duty"
    Case 10
        sAns = "Degraded"
    Case 11
        sAns = "Not Installed"
    Case 12
        sAns = "Install Error"
    Case 13
        sAns = "Power Save - Unknown"
    Case 14
        sAns = "Power Save - Low Power Mode"
    Case 15
        sAns = "Power Save - Standby"
    Case 16
        sAns = "Power Cycle"
    Case 17
        sAns = "Power Save - Warning"
    Case Else
        sAns = "Unknown"
End Select
AvailabilityToString = sAns

End Function

Private Sub Class_Initialize()
Dim oCpu As SWbemObject 'WMI Object, in this case, local CPUs
Dim sPath As String, sCaption As String

Dim lElement As Long
ReDim asCpuPaths(0) As String


On Error GoTo ErrorHandler

'Get Default NameSpace, which will be the one for the local machine

Set m_objWMINameSpace = GetObject("winmgmts:")

Set m_objCPUSet = m_objWMINameSpace.InstancesOf("Win32_Processor")
sCaption = m_objCPUSet.Count & " processor"
If m_objCPUSet.Count <> 1 Then sCaption = sCaption & "s"
sCaption = sCaption & " detected on this machine"

'Populate list box with CPU names
                
For Each oCpu In m_objCPUSet
     With oCpu
        sPath = .Path_ & ""
            If sPath <> "" Then
                'save path to array, so on machines with multiple CPUs,
                'each can be identified and their info loaded into text box
                
                lElement = IIf(asCpuPaths(0) = "", 0, UBound(asCpuPaths) + 1)
                ReDim Preserve asCpuPaths(lElement) As String
                asCpuPaths(lElement) = sPath
            End If
     End With
Next

     
CleanUp:
Set oCpu = Nothing

Exit Sub

ErrorHandler:
MsgBox "CPU Information could not be displayed due to the following error: " & Err.Description, , "WMI Demo Failed"
GoTo CleanUp
End Sub

Private Sub Class_Terminate()
Set m_objCPUSet = Nothing
Set m_objWMINameSpace = Nothing
End Sub

Public Function GetCPUInfo(CPUIndex As Integer) As String
Dim oCpu As SWbemObject
'Refer to SDK documentation for more detail about each of these properties
Dim sInfoString As String
On Error Resume Next
Set oCpu = m_objCPUSet(asCpuPaths(CPUIndex))
With oCpu
    sInfoString = "CPU Name: " & .Name & vbCrLf
    sInfoString = sInfoString & "Description: " & .Description & vbCrLf
    sInfoString = sInfoString & "Processor ID: " & .ProcessorID & vbCrLf
    sInfoString = sInfoString & "Status: " & .Status & vbCrLf
    sInfoString = sInfoString & "Manufacturer: " & .Manufacturer & vbCrLf
    sInfoString = sInfoString & "Availability: " & AvailabilityToString(.Availability) & vbCrLf
    sInfoString = sInfoString & "Load Percentage: " & .LoadPercentage & vbCrLf
    sInfoString = sInfoString & "Current Clock Speed: " & .CurrentClockSpeed & " MHz" & vbCrLf
    sInfoString = sInfoString & "Maximum Clock Speed: " & .MaxClockSpeed & vbCrLf
    sInfoString = sInfoString & "Level 2 Cache Size: " & .L2CacheSize & vbCrLf
    sInfoString = sInfoString & "Level 2 Cache Speed: " & .L2CacheSpeed & vbCrLf
    sInfoString = sInfoString & "Power Management Supported: " & .PowerManagementSupported
End With
GetCPUInfo = sInfoString


End Function

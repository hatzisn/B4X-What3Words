B4A=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=9.85
@EndOfDesignText@
#Region Shared Files
#CustomBuildAction: folders ready, %WINDIR%\System32\Robocopy.exe,"..\..\Shared Files" "..\Files"
'Ctrl + click to sync files: ide://run?file=%WINDIR%\System32\Robocopy.exe&args=..\..\Shared+Files&args=..\Files&FilesSync=True
#End Region

'Ctrl + click to export as zip: ide://run?File=%B4X%\Zipper.jar&Args=Project.zip

Sub Class_Globals
	Private Root As B4XView
	Private xui As XUI
	Private w3w2 As W3W
	#if b4a
	Private rp As RuntimePermissions
	#end if
End Sub

Public Sub Initialize
'	B4XPages.GetManager.LogEvents = True
	w3w2.Initialize(Me, "ev", "RY997U9R")

End Sub

'This event will be called once, before the page becomes visible.
Private Sub B4XPage_Created (Root1 As B4XView)
	Root = Root1
	Root.LoadLayout("MainPage")
	#if b4a
	rp.CheckAndRequest(rp.PERMISSION_ACCESS_COARSE_LOCATION)
	wait for B4XPage_PermissionResult (Permission As String, Result As Boolean)
	
	rp.CheckAndRequest(rp.PERMISSION_ACCESS_FINE_LOCATION)
	wait for B4XPage_PermissionResult (Permission As String, Result As Boolean)
	#end if
End Sub

'You can see the list of page related events in the B4XPagesManager object. The event name is B4XPage.

Private Sub Button1_Click
	w3w2.GetCoordinatesFromWhat3Words("πετάξαμε.αγωνία.άγνωστο")
	w3w2.GetWhat3WordsFromCoordinates(37.946903, 23.664211)
	w3w2.GetWhat3WordsFromMyCurrentPosition
End Sub

Private Sub ev_W3WResponse(w3wsq As W3WSquareType)
	If w3wsq.Success = True Then
		Log(w3wsq.mCoordinates)
		Log(w3wsq.Words)
	End If
End Sub
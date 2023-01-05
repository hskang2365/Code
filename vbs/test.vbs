Function Set_LayOut()
If Not IsObject(application) Then
    Set SapGuiAuto  = GetObject("SAPGUI")
    Set application = SapGuiAuto.GetScriptingEngine
End If
If Not IsObject(connection) Then
    Set connection = application.Children(0)
End If
If Not IsObject(session) Then
    Set session    = connection.Children(0)
End If
If IsObject(WScript) Then
    WScript.ConnectObject session,     "on"
    WScript.ConnectObject application, "on"
End If

if instr(session.findById("wnd[0]/sbar").Text, "조회되었습니다.") > 0 Then
    session.findById("wnd[0]/shellcont/shell/shellcont[1]/shell").pressToolbarButton "&MB_VARIANT"
    session.findById("wnd[1]/usr/subSUB_CONFIGURATION:SAPLSALV_CUL_LAYOUT_CHOOSE:0500/cntlD500_CONTAINER/shellcont/shell").setCurrentCell 1,"TEXT"
    session.findById("wnd[1]/usr/subSUB_CONFIGURATION:SAPLSALV_CUL_LAYOUT_CHOOSE:0500/cntlD500_CONTAINER/shellcont/shell").clickCurrentCell
    Set_LayOut = session.findById("wnd[0]/sbar").Text
Else
    Set_LayOut = "Fail"
End If
End Function

Call Set_LayOut
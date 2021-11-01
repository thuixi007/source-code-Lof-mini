#RequireAdmin
#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=..\..\Rhaast_Unbound_profileicon.ico
#AutoIt3Wrapper_Outfile=runlol.exe
#AutoIt3Wrapper_Res_Comment=khởi động LMHT ở chế độ tối ưu
#AutoIt3Wrapper_Res_Description=League of Fps - start LOL
#AutoIt3Wrapper_Res_Fileversion=1.0.0
#AutoIt3Wrapper_Res_ProductName=League of Fps - start LOL
#AutoIt3Wrapper_Res_ProductVersion=1.0.0
#AutoIt3Wrapper_Res_LegalCopyright=Copyright 2020 by starpbiibk
#AutoIt3Wrapper_Res_Language=1066
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
;Grabbed and modified from here ==> http://www.autoitscript.com/autoit3/files/beta/autoit/COM/Wmi-terminate.au3

#include <AutoItConstants.au3>
#include <MsgBoxConstants.au3>
ToolTip("tool create by AnhQuan " &@CRLF &" Bạn Đã Lựa Chọn Tối Ưu Liên Minh, Vui Lòng Khởi Động Liên Minh Huyền Thoại Để Bắt Đầu Tối Ưu" & @CRLF & "Bạn Có thể hủy tác vụ này bằng cách tắt biểu tượng phần mềm dưới thanh system tray",-1,-1)
$link = FileReadLine("lofconfig.txt", 1)
ProcessWait("RiotClientServices.exe")
Sleep(550)
showmeitpliz("RiotClientServices.exe")     ;=> Comodo FW process   ==>cfp.exe  (define your proc.exe)  ;~ Now calling funcsion
Func showmeitpliz($proc, $strComputer=".")
     $proc="RiotClientServices.exe"  ;=> Comodo FW process   ==>cfp.exe  (define your proc.exe)

  $oWMI=ObjGet("winmgmts:{impersonationLevel=impersonate}!\\" & $strComputer & "\root\cimv2")
  $oProcessColl=$oWMI.ExecQuery("Select * from Win32_Process where Name= " & '"'& $Proc & '"')

  For $Process In $oProcessColl
    $Process=$Process.Commandline
	FileDelete("1.bat")
	FileWrite("1.bat",'start "" '&$Process)
	ProcessClose("Leagueclient.exex")
	Sleep(550)
	ProcessClose("Garena.exe")
			ProcessClose("gxxcef.exe")
			ProcessClose("gxxsvc.exe")
			ProcessClose("gxxapphelper.exe")
			ProcessClose("RtHDVBg.exe")
			ProcessClose("reader_sl.exe")
			ProcessClose("AdobeARM.exe")
			ProcessClose("NeroCheck.exe")
			ProcessClose("HKCMD.exe")
			ProcessClose("atiptaxx.exe")
			ProcessClose("ati2evxx.exe")
			ProcessClose("RAVCpl64.exe")
			ProcessClose("Nwiz.exe")
			ProcessClose("CCC.exe")
			ProcessClose("SynTPEnh.exe")
			ProcessClose("winampa.exe")
			ProcessClose("OSPPSVC.exe")
			ProcessClose("Sidebar.exe")
			ProcessClose("wmpnetwk.exe")
			ProcessClose("CCleaner.exe")
			ProcessClose("RtHDVCpl.exe")
			ProcessClose("Firefox.exe")
			Run("TASKKILL /F /PID " & ProcessExists("browser.exe"))
			Run("TASKKILL /F /PID " & ProcessExists("chrome.exe"))
			ProcessClose("UniKeyNT.exe")
			ProcessClose("UniKey.exe")
			ProcessClose("UniKeyvista.exe")
			ProcessClose("cpuz.exe")
			ProcessClose("aow.exe")
			ProcessClose("GameBarPresenceWriter.exe")
			ProcessClose("Video.UI.exe")
			ProcessClose("GameBar.exe")
			ProcessClose("AppMarket.exe")
			Sleep(250)
ProcessClose("lolex.exe")
DirRemove($link & "\Game\Logs", $dir_remove)
			Sleep(400)


	 Sleep(250)
Run("1.bat")
Sleep(1000)
	FileDelete("x1.bat")
Next
EndFunc; ==>showmeitpliz()
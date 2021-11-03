;Grabbed and modified from here ==> http://www.autoitscript.com/autoit3/files/beta/autoit/COM/Wmi-terminate.au3

#include <AutoItConstants.au3>
#include <MsgBoxConstants.au3>
#RequireAdmin
ToolTip("League of FPS PRO" &@CRLF &"Bạn Hãy Khởi Động Liên Minh Huyền Thoại, phần mềm sẽ tắt một số tác vụ và dọn dẹp Ram Cho bạn" & @CRLF & "-> Ngay bây giờ, bạn hãy vào game",-1,-1)
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
	;FileDelete("1.bat")
	;FileWrite("1.bat",'start "" '&$Process)
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
			ProcessClose("Zalo.exe")
			ProcessClose("Gotiengviet.exe")
			Run("TASKKILL /F /PID " & ProcessExists("teams.exe"))
			Sleep(250)
ProcessClose("lolex.exe")
DirRemove($link & "\Game\Logs", $dir_remove)
			Sleep(400)


	 Sleep(250)
;Run("1.bat")
;start game;;
$CMD = 'start "" '&$Process
RunWait(@ComSpec & " /c " & $CMD)

Sleep(1000)
;FileDelete("1.bat")
Next
EndFunc; ==>showmeitpliz()
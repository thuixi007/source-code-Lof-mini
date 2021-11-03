#NoTrayIcon
#RequireAdmin
#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=logo.ico
#AutoIt3Wrapper_Outfile=LOF Pro BUILD\LOF_Pro_beta.Exe
#AutoIt3Wrapper_Compression=4
#AutoIt3Wrapper_Res_Comment=Phần Mềm Giảm Lag, Tăng Fps Miễn Phí Cho Liên Minh Huyền Thoại
#AutoIt3Wrapper_Res_Description=League of Fps Create By Starpbiibk
#AutoIt3Wrapper_Res_Fileversion=4.15.0.22
#AutoIt3Wrapper_Res_Fileversion_AutoIncrement=y
#AutoIt3Wrapper_Res_ProductName=@By Starpbiibk
#AutoIt3Wrapper_Res_ProductVersion=1.0
#AutoIt3Wrapper_Res_CompanyName=@By Starpbiibk
#AutoIt3Wrapper_Res_LegalCopyright=@By Starpbiibk
#AutoIt3Wrapper_Res_LegalTradeMarks=@By Starpbiibk
#AutoIt3Wrapper_Res_Language=1066
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#include <ButtonConstants.au3>
#include <ComboConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#include <WinAPIFiles.au3>
#include <AutoItConstants.au3>
#include <MsgBoxConstants.au3>
#include <Array.au3>
#include <File.au3>

;;;;;;;;;;;;;
;;Phiên bản Phần Mềm
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
$myver = "4.15h"


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
If FileRead("lofproconfig.ini") = "" Then
	$Read = InputBox("League of FPS PRO", "Bạn hãy nhập đường dẫn đến League of Legends")
	If $Read = "" Then Exit
	FileWrite("lofproconfig.ini", $Read & "")
EndIf

$link = FileRead("lofproconfig.ini")

$iFileExists = FileExists($link&"\Game\League of legends.exe")
  If $iFileExists Then

  Else
	 FileDelete("lofproconfig.ini")
	 MsgBox(0,"Thông báo","Chọn thư mục thất bại, vui lòng kiểm tra lại")
	 Exit
	 EndIf
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
$iFileExists = FileExists(@WindowsDir &"\EmptyStandbyList.exe")
  If $iFileExists Then

  Else
FileCopy(@ScriptDir&"\thu vien\Hr-patch\hr-patch.exe", @WindowsDir & "\EmptyStandbyList.exe",1)
MsgBox(0, "check", "Đã bổ sung thư viện Bộ dọn ram còn thiếu")
	 EndIf
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Kiểm tra thông tin từ server google drive
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;Kiểm tra khi khởi động

SplashImageOn("Lof Pro, Đang khởi động...         LeagueOfFps.ga",@ScriptDir &"\thu vien\img\thumb.bmp",770,443,-1,-1)
;;;Thông báo khi khởi động phần mềm

;; kiểm tra kết nối mạng
$ping = Ping("www.google.com")
If Not @error Then
    Sleep(250)
Else
	Sleep(1000)
	SplashOff()
   MsgBox(0,"Error","Không thể kết nối thành công tới Server Google.com - vui lòng kiểm tra đường truyền mạng của bạn và thử lại :<")
   Exit
EndIf

;;;CFg = https://drive.google.com/file/d/1u92xaj63a-1tHKpF52HbimfxEMpgANW9/view?usp=sharing
$cfg_game=BinaryToString(InetRead("https://drive.google.com/uc?export=download&id=1u92xaj63a-1tHKpF52HbimfxEMpgANW9"),4)
$thongbao=BinaryToString(InetRead("https://drive.google.com/uc?export=download&id=1R0lD8WGhpP84StSPP32qoJ6nMq-Leqai"),4)
$baotri=BinaryToString(InetRead("https://drive.google.com/uc?export=download&id=1PHzYvEkw9aWJRkJoEZyO_s3zYaU9SU83"),4)
$phienbannew=BinaryToString(InetRead("https://drive.google.com/uc?export=download&id=1-XFhUWew6NTj6UtRCYmegDQeRRGjoscN"),4)
Sleep(600)
SplashOff()

;;;Phien Ban
;;;https://drive.google.com/file/d/1-XFhUWew6NTj6UtRCYmegDQeRRGjoscN/view?usp=sharing
if $phienbannew=$myver Then
	Sleep(20)
Else
	Sleep(1000)
	SplashOff()
	MsgBox(0,"Thông Báo","Phần mềm đã có phiên bản mới với nhiều cải tiến và sửa lỗi, bạn vui lòng cập nhật lại phiên bản mới nhất, xin cảm ơn.")
	ShellExecute("http://leagueoffps.ga/")
	exit
	EndIf
;;;Baotri
;;;https://drive.google.com/file/d/1PHzYvEkw9aWJRkJoEZyO_s3zYaU9SU83/view?usp=sharing
if $baotri="0" Then
	Sleep(1000)
	SplashOff()
	Sleep(20)
ElseIf $baotri="1" Then
	MsgBox(0,"Thông Báo","Phần mềm hiện đang Bảo Trì :<, chúng tôi sẽ trở lại sớm nhất có thể")
	exit
	EndIf
;;;;;;;;;;;;thong bao tu may chu


MsgBox(64,"Thông báo từ máy chủ",$thongbao)
;https://drive.google.com/file/d/1R0lD8WGhpP84StSPP32qoJ6nMq-Leqai/view?usp=sharing







;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Main phần mềm
;;;;;;;;;;;;;;;;;;;;;;;;;;;
#Region ### START Koda GUI section ### Form=
$Form1 = GUICreate("League of FPS PRO ver" & $myver &"- LeagueofFPS.ga ", 623, 293, -1, -1)
$Button1 = GUICtrlCreateButton("Áp Dụng Config tối ưu", 24, 24, 123, 49)
$Button2 = GUICtrlCreateButton("Tạo Reg ưu tiên xử lý", 168, 24, 131, 49)
$Button3 = GUICtrlCreateButton("Tối Ưu Hóa Win", 320, 24, 131, 49)
$Button4 = GUICtrlCreateButton("Bật Chế độ hiệu năng", 472, 24, 121, 49)
$Group1 = GUICtrlCreateGroup("Tối ưu hóa game - win < tốt hơn bản thông thường> | Chỉ cần làm 1 lần", 16, 8, 585, 81)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group2 = GUICtrlCreateGroup("Khởi Động LMHT tối ưu và Dọn Ram ", 352, 112, 249, 113)
$Combo1 = GUICtrlCreateCombo("Bật", 480, 184, 113, 25, BitOR($CBS_DROPDOWN,$CBS_DROPDOWNLIST))
GUICtrlSetData($Combo1, "Tắt", "Vasu")
$Label1 = GUICtrlCreateLabel("Tự động dọn RAM khi khởi động lmht ở chế độ tối ưu", 368, 184, 100, 40)
$Button5 = GUICtrlCreateButton("Khởi Động LMHT tối ưu", 416, 128, 139, 41)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group3 = GUICtrlCreateGroup("Nếu bạn cần tăng nhiều Fps hơn nữa, hãy thử các tùy chọn sau", 16, 104, 305, 129)
$Button6 = GUICtrlCreateButton("Dùng Dx11beta Render", 32, 128, 121, 41)
$Button7 = GUICtrlCreateButton("Độ phân giải siêu thấp", 176, 128, 121, 41)
$Button8 = GUICtrlCreateButton("Tăng Tốc Trò chơi", 96, 184, 147, 41)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Label2 = GUICtrlCreateLabel("League of FPS PRO @by starpbiibk | trang chủ LeagueofFps.ga", 16, 256, 400, 17)
$Button9 = GUICtrlCreateButton("Thông Tin", 520, 248, 75, 25)
$Button10 = GUICtrlCreateButton("Hỗ trợ nhanh", 450, 248, 75, 25)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###



While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit

Case $Button1
   $t = MsgBox (4, "Lưu Ý" ,"Phần mềm sẽ Tạo config để hạ mức đồ họa của game xuống mức thấp nhất có thể, nhấn yes để tiếp tục")
If $t = 6 Then
_config()
_dophangiai(@DeskTopWidth,@DeskTopHeight)
MsgBox(0,"Thông báo","Đã tạo config xong")

ElseIf $t = 7 Then
 EndIf

;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
case $Button2
$verify=MsgBox(68,"League of FPS Pro","Phần mềm sẽ tiến hành tạo registry để có thể ưu tiên xử lý cho liên minh, tối ưu hóa GPU và tắt các tác vụ như gamebar,dvr,.... nhằm tối ưu hóa hiệu suất chơi game, nhưng có thể ảnh hướng tới các tác vụ khác.bấm ok nếu bạn hiểu và muốn tiếp tục.")
 Select
                        Case $verify = '6'
                            MsgBox(0,"Thông báo","Đã tạo tiến hành tối ưu reg xong. bạn vui lòng khởi động lại máy để áp dụng một số thiết lập :> ")
							;;tao uu tien xu li cpu cho lol
							RegWrite("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\League of Legends.exe\PerfOptions","CpuPriorityClass","REG_DWORD","6")
							;;tat game dvr
							RegWrite("HKEY_CURRENT_USER\System\GameConfigStore","GameDVR_Enabled","REG_DWORD","0")
							RegWrite("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PolicyManager\default\ApplicationManagement\AllowGameDVR","value","REG_DWORD","0")
							RegWrite("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PolicyManager\default\ApplicationManagement\AllowGameDVR","value","REG_DWORD","0")
							;;;;;;;;
							;;uu tien xu li cho game
							RegWrite("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games","GPU Priority","REG_DWORD","8")
							RegWrite("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games","Priority","REG_DWORD","6")
							RegWrite("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games","Scheduling Category","REG_SZ","High")
							RegWrite("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games","SFIO Priority","REG_SZ","High")
							;; phan hoi he thong
							RegWrite("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile","SystemResponsiveness","REG_DWORD","1")
							;;;;;;;;;;;;;;;;;;
							;;;;;;;;;;;;;;;;;;
                        Case $verify = '7'
                            ; Cancel Exit
						 EndSelect
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
Case $button3
MsgBox(64,"Thông báo","Phần mềm sẽ tiến hành tắt một số dịch vụ windowns, việc thiếu dịch vụ có thể khiến một số ứng dụng bị lỗi hoặc hoạt động không đúng, nếu vậy, vui lòng xem các dịch vụ được tắt tại file tattacvu.txt")
run(@ScriptDir & "\thu vien\cmd\antifulldisk.bat")
ProcessWaitClose("cmd.exe")
MsgBox(0,"","Đã Xong rồi nè hihi")

Case $button4
$CMD = "powercfg.exe /setactive 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c"
RunWait(@ComSpec & " /c " & $CMD)
MsgBox(64,"League of FPS pro","Đã Bật chế độ hiệu năng cao, nếu bạn sử dụng laptop, điều này sẽ dẫn tới việc tốn pin hơn bình thường , để tắt, bạn vui lòng chạy file khoiphuc-sudungpin.bat")
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

Case $button5
   $doc = GUICtrlRead($Combo1)
If $doc='Bật' Then
$giai_phong_ram = 1
Else
$giai_phong_ram = 0
EndIf
_chaygametoiuu($giai_phong_ram)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
case $button6
$t = MsgBox (4, "Lưu Ý" ,"Chế Độ DX11beta chỉ áp dụng với những máy tính hoặc laptop có sử dụng Gpu rời hoặc iGpu có hỗ trợ chế độ này" & @CRLF &"Gpu hiện tại của bạn đang sử dụng:" &xd1() &@CRLF&"Bạn nên tra google để xem Gpu mình đang sử dụng có sử dụng được chế độ này hay không,nếu bạn biết rõ, hãy nhấn yes để tiếp tục" &@CRLF&@CRLF&"Nếu Game bị lỗi và không thể chạy được, bạn hãy bấm vào áp dụng config tối ưu để thiết lập lại")
If $t = 6 Then
ShellExecute(@ScriptDir&"\LOF Pro BUILD\thu vien\img\thumb.bmp")
_dx11main()
ElseIf $t = 7 Then
   Sleep(10)
 EndIf
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
Case $Button7
      $t = MsgBox (4, "Lưu Ý" ,"Phần mềm sẽ tạo config để đưa độ phân giải game về thấp hơn mức thiết lập thấp nhất của game , cụ thể là độ phân giải 800x600 và chế độ màu 24bit.Nếu Bạn không muốn sử dụng nữa, hãy nhấn vào nút áp dụng config tối ưu để đặt lại. nhấn yes để tiếp tục")
If $t = 6 Then
   $w= '800'
   $h= "600"
_dophangiai($w,$h)
MsgBox(0,"Thông báo","Đã tạo độ phân giải siêu cùi cho game 800x600")
ElseIf $t = 7 Then
 EndIf
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
Case $button8
MsgBox(64,"Thông báo","Phần mềm sẽ tiến hành tắt tất cả các dịch vụ không phục vụ tiến trình game của windowns, có thể khiến một số tác vụ khác bị ảnh hưởng")
run(@ScriptDir & "\thu vien\cmd\bxmode.bat")
ProcessWaitClose("cmd.exe")
MsgBox(0,"","Đã Xong rồi nè hihi")
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
case $Button9
   MsgBox(0,"Thông Tin phần mềm","Username : Người dùng miễn phí"&@CRLF & "Hạn Sử dụng: "&@CRLF&"----------"&"Phiên bản phần mềm :4.14c"&@CRLF&"Nếu Trong Quá trình sử dụng bạn gặp bất kì vấn đề gì, hãy liên hệ đến instagram cá nhân của mình : _biibk.cute để nhận được hỗ trợ sớm nhất" &@CRLF &"Truy cập LeagueOfFPS.ga hoặc LeagueOfFps.wordpress.com để tới trang chủ của phần mềm")
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
case $Button10
	ShellExecute("https://www.leagueoffps.ga/c%C3%A2u-h%E1%BB%8Fi-th%C6%B0%E1%BB%9Dng-g%E1%BA%B7p")
EndSwitch

 WEnd

Func _config()
				   FileDelete($link&"\Game\Config\game.cfg")
			   Sleep (250)
			   FileWrite($link&"\Game\Config\game.cfg",$cfg_game)
	EndFunc

Func _dophangiai($w,$h)
Global $aConfig, $sConfig = $link & "\Game\Config\game.cfg"
_FileReadToArray($sConfig, $aConfig)
For $i = 1 To $aConfig[0]
    If StringInStr($aConfig[$i], "Width=") Then $aConfig[$i] = "Width="&$w
	   If StringInStr($aConfig[$i], "Height=") Then $aConfig[$i] = "Height="&$h
Next
_FileWriteFromArray($sConfig, $aConfig, 1)

EndFunc



Func xd1()
$objWMIService = ObjGet("winmgmts:\\.\root\CIMV2")
$colItems = $objWMIService.ExecQuery("SELECT * FROM Win32_DisplayConfiguration", "WQL", 0x10 + 0x20)

If IsObj($colItems) then
   For $objItem In $colItems
        $Output = $objItem.DeviceName
   Next
Endif
Return $Output
EndFunc

Func _dx11main()
$file = FileOpen($link & "\Game\Config\game.cfg", 0)
$read = FileRead($file)
If @error = -1 Then
    MsgBox(0, "LOF pro ", "File config can't Not read. pls contact for dev. @instagram:_biibk.cute ")
    Exit
Else

    If StringRegExp($read, "DX11BetaTest=") Then
	   $dx11_opt_name="DX11BetaTest="
	   $dx11_opt_setting="DX11BetaTest=1"
       _dx11write($dx11_opt_name,$dx11_opt_setting)
	   MsgBox(64,"Thông báo","Dx11 off to on")
    Else
        $dx11_opt_name="[General]"
		$dx11_opt_setting="[General]"&@CRLF&"DX11BetaTest=1"
		_dx11write($dx11_opt_name,$dx11_opt_setting)
	  MsgBox(64,"Thông báo","add dx11 to line")
    EndIf
EndIf
FileClose($file)
EndFunc

Func _dx11write($dx11_opt_name,$dx11_opt_setting)
Global $aConfig, $sConfig = $link & "\Game\Config\game.cfg"
_FileReadToArray($sConfig, $aConfig)
For $i = 1 To $aConfig[0]
    If StringInStr($aConfig[$i], $dx11_opt_name) Then $aConfig[$i] = $dx11_opt_setting

Next
_FileWriteFromArray($sConfig, $aConfig, 1)

EndFunc

Func _chaygametoiuu($giai_phong_ram)
   ToolTip("League of FPS PRO" &@CRLF &"Bạn Hãy Khởi Động Liên Minh Huyền Thoại, phần mềm sẽ tắt một số tác vụ và dọn dẹp Ram Cho bạn|>nếu lựa chọn này được bật<|" & @CRLF & "-> Ngay bây giờ, bạn hãy vào game",-1,-1)
$link = FileReadLine("lofconfig.txt", 1)
ProcessWait("RiotClientServices.exe")
Sleep(550)
showmeitpliz("RiotClientServices.exe")
ToolTip( "",-1,-1 )
Sleep(700)
if $giai_phong_ram = 1 Then
$CMD = "EmptyStandbyList.exe workingsets"
RunWait(@ComSpec & " /c " & $CMD)
   EndIf


EndFunc

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
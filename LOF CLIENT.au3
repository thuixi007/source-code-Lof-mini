#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#RequireAdmin



If FileRead("lofconfig.ini") = "" Then
	$Read = InputBox("League of fps", "Bạn hãy nhập đường dẫn đến league of legends")
	If $Read = "" Then Exit
	FileWrite("lofconfig.ini", $Read & "")
EndIf

$link = FileRead("lofconfig.ini")

$iFileExists = FileExists($link&"\Game\League of legends.exe")
  If $iFileExists Then
  Else
	 FileDelete("lofconfig.ini")
	 MsgBox(0,"Thông báo","Chọn thư mục thất bại, vui lòng kiểm tra lại")
	 Exit
	 EndIf

#Region ### START Koda GUI section ### Form=c:\users\anh quan\desktop\lof build\form1.kxf
$Form1_1 = GUICreate("League of FPS Mini -- final build", 459, 164, 771, 444)
$Group1 = GUICtrlCreateGroup("Khởi động LMHT", 256, 16, 185, 105)
$Button1 = GUICtrlCreateButton("Khởi Động LOL Tối Ưu", 280, 48, 147, 57)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Button2 = GUICtrlCreateButton("áp dụng config lol max fps", 16, 16, 187, 33)
$Button3 = GUICtrlCreateButton("Tối ưu hóa máy nhanh", 16, 56, 187, 33)
$Label1 = GUICtrlCreateLabel("create by anhquan - fb/starpbiibk", 16, 136, 355, 170)
$Label2 = GUICtrlCreateLabel("thư mục : " & $link, 256, 136, 355, 17)
$Button4 = GUICtrlCreateButton("Ưu tiên bộ xử lý cho league of legends", 16, 96, 187, 33)
$Group2 = GUICtrlCreateGroup("Tối ưu hóa Game - Win", 8, 0, 225, 137)
GUICtrlCreateGroup("", -99, -99, 1, 1)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###


While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit

		Case $Button1
			run(@ScriptDir & "\thuvien\runlol.exe")

Case $Button2
   FileCopy( @ScriptDir	& "\thuvien\game.cfg",$link & "\Game\Config\",1)
   FileCopy( @ScriptDir	& "\thuvien\LeagueClientSettings.yaml",$link & "\LeagueClient\Config\",1)
MsgBox(0,"Thông báo","Đã config xong")

case $Button4
$verify=MsgBox(68,"lưu ý nhỏ","Phần mềm sẽ tiến hành tạo registry để có thể ưu tiên Cpu xử lý cho league of legends.exe, có thể sẽ ảnh hưởng hiệu năng của phần mềm khác nếu chạy đa nhiệm,bấm yes nếu bạn hiểu và muốn tiếp tục.")
 Select
                        Case $verify = '6'
                            MsgBox(0,"Thông báo","Đã tạo registry để ưu tiên xử lý cho league of legends.exe")
							RegWrite("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\League of Legends.exe\PerfOptions","CpuPriorityClass","REG_DWORD","6")
                        Case $verify = '7'
                            ; Cancel Exit
						 EndSelect


Case $button3
MsgBox(64,"Thông báo","Phần mềm sẽ tiến hành tắt một số dịch vụ windowns, việc thiếu dịch vụ có thể khiến một số ứng dụng bị lỗi hoặc hoạt động không đúng, nếu vậy, vui lòng xem các dịch vụ được tắt tại file tattacvu.txt")
run(@ScriptDir & "\thuvien\antifulldisk.bat")
	EndSwitch
WEnd

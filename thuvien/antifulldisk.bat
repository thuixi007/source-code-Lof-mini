@ECHO OFF
ECHO -------------------------------------------------------
ECHO -Phan mem dang tien hanh toi uu, ban vui long doi chut-
ECHO -------------------------------------------------------
regsvr32 comcat.dll /s
regsvr32 shdoc401.dll /s
regsvr32 shdoc401.dll /i /s
regsvr32 asctrls.ocx /s
regsvr32 oleaut32.dll /s
regsvr32 shdocvw.dll /I /s
regsvr32 shdocvw.dll /s
regsvr32 browseui.dll /s
regsvr32 browseui.dll /I /s
regsvr32 msrating.dll /s
regsvr32 mlang.dll /s
regsvr32 hlink.dll /s
regsvr32 mshtmled.dll /s
regsvr32 urlmon.dll /s
regsvr32 plugin.ocx /s
regsvr32 sendmail.dll /s
regsvr32 scrobj.dll /s
regsvr32 mmefxe.ocx /s
regsvr32 corpol.dll /s
regsvr32 jscript.dll /s
regsvr32 msxml.dll /s
regsvr32 imgutil.dll /s
regsvr32 thumbvw.dll /s
regsvr32 cryptext.dll /s
regsvr32 rsabase.dll /s
regsvr32 inseng.dll /s
regsvr32 iesetup.dll /i /s
regsvr32 cryptdlg.dll /s
regsvr32 actxprxy.dll /s
regsvr32 dispex.dll /s
regsvr32 occache.dll /s
regsvr32 occache.dll /i /s
regsvr32 iepeers.dll /s
regsvr32 urlmon.dll /i /s
regsvr32 cdfview.dll /s
regsvr32 webcheck.dll /s
regsvr32 mobsync.dll /s
regsvr32 pngfilt.dll /s
regsvr32 licmgr10.dll /s
regsvr32 icmfilter.dll /s
regsvr32 hhctrl.ocx /s
regsvr32 inetcfg.dll /s
regsvr32 tdc.ocx /s
regsvr32 MSR2C.DLL /s
regsvr32 msident.dll /s
regsvr32 msieftp.dll /s
regsvr32 xmsconf.ocx /s
regsvr32 ils.dll /s
regsvr32 msoeacct.dll /s
regsvr32 inetcomm.dll /s
regsvr32 msdxm.ocx /s
regsvr32 dxmasf.dll /s
regsvr32 l3codecx.ax /s
regsvr32 acelpdec.ax /s
regsvr32 mpg4ds32.ax /s
regsvr32 voxmsdec.ax /s
regsvr32 danim.dll /s
regsvr32 Daxctle.ocx /s
regsvr32 lmrt.dll /s
regsvr32 datime.dll /s
regsvr32 dxtrans.dll /s
regsvr32 dxtmsft.dll /s
regsvr32 WEBPOST.DLL /s
regsvr32 WPWIZDLL.DLL /s
regsvr32 POSTWPP.DLL /s
regsvr32 CRSWPP.DLL /s
regsvr32 FTPWPP.DLL /s
regsvr32 FPWPP.DLL /s
regsvr32 WUAPI.DLL /s
regsvr32 WUAUENG.DLL /s
regsvr32 ATL.DLL /s
regsvr32 WUCLTUI.DLL /s
regsvr32 WUPS.DLL /s
regsvr32 WUWEB.DLL /s
regsvr32 wshom.ocx /s
regsvr32 wshext.dll /s
regsvr32 vbscript.dll /s
regsvr32 scrrun.dll mstinit.exe /setup /s
regsvr32 msnsspc.dll /SspcCreateSspiReg /s
regsvr32 msapsspc.dll /SspcCreateSspiReg /s
regsvr32 /s urlmon.dll
regsvr32 /s mshtml.dll
regsvr32 /s shdocvw.dll
regsvr32 /s browseui.dll
regsvr32 /s jscript.dll
regsvr32 /s vbscript.dll
regsvr32 /s scrrun.dll
regsvr32 /s msxml.dll
regsvr32 /s actxprxy.dll
regsvr32 /s softpub.dll
regsvr32 /s wintrust.dll
regsvr32 /s dssenh.dll
regsvr32 /s rsaenh.dll
regsvr32 /s gpkcsp.dll
regsvr32 /s sccbase.dll
regsvr32 /s slbcsp.dll
regsvr32 /s cryptdlg.dll
regsvr32 /s schannel.dll
regsvr32 /s oleaut32.dll
regsvr32 /s ole32.dll
regsvr32 /s shell32.dll
regsvr32 /s initpki.dll
regsvr32 /s msscript.ocx
regsvr32 /s dispex.dll
regsvr32 jscript.dll /s
del %temp% /Q /F
net stop wuauserv
net stop DeviceAssociationService
net stop msiserver
net stop FontCache
net stop SysMain
ren %windir%\system32\catroot2 catroot2.old
cd /d %windir%\SoftwareDistribution
rd /s DataStore /Q
regsvr32 wuapi.dll /s
regsvr32 wups.dll /s
regsvr32 wuaueng.dll /s
regsvr32 wucltui.dll /s
regsvr32 wuweb.dll /s
regsvr32 msxml.dll /s
regsvr32 msxml2.dll /s
regsvr32 msxml3.dll /s
regsvr32 urlmon.dll /s
exit
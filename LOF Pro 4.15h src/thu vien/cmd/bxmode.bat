@ECHO OFF
ECHO -------------------------------
ECHO -Booster game on, pls wait....-
ECHO --------By: Starpbiibk---------
ECHO -------------------------------
net stop AppMgmt
net stop DeviceAssociationService
net stop FontCache
net stop QWAVE
net stop stisvc
net stop StorSvc
net stop TabletInputService
net stop TrkWks
net stop WinHttpAutoProxySvc
ECHO -------------------------------------------------------
ECHO -OK-
ECHO -------------------------------------------------------
@ECHO OFF
ECHO -------------------------------------------------------
ECHO -Phan mem dang tien hanh toi uu, ban vui long doi chut-
ECHO -------------------------------------------------------
net stop AppMgmt
net stop DeviceAssociationService
net stop FontCache
net stop QWAVE
net stop stisvc
net stop StorSvc
net stop SystemEventsBroker
net stop TabletInputService
net stop TrkWks
net stop WinHttpAutoProxySvc
ECHO -------------------------------------------------------
ECHO -OK-
ECHO -------------------------------------------------------
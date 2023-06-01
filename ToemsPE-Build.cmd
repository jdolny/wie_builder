	::Version 2.0.3
	@echo off
	pushd %~dp0

	::Time Zone Reference http://technet.microsoft.com/en-us/library/cc749073(v=ws.10).aspx
	set TimeZone=Eastern Standard Time
	set InputLocale=0409:00000409
	set MyLang=en-us
	set ComServerURL=http://0.0.0.0/
	set UniversalToken=
	set LoginDebug=false
	set RestrictComServers=false
	set CreateISO=true
	
	set PLATFORM=x64
	set Pass=1
	call .\Scripts\MakePE.cmd
	
	::The 32-bit versions of Windows PE are no longer included in the Windows PE add-ons starting with the ADK for Windows 11, version 22H2. 
	::The last supported version of 32-bit Windows PE is available in the Windows PE add-on for Windows 10, version 2004.
	::If you are using an older version of WinPE and need to build a 32-bit Windows PE, then uncomment the next 4 lines.

	::set PLATFORM=x86
	::set Pass=2
	::call .\Scripts\MakePE.cmd
	::if /I %CreateISO% EQU true call .\Scripts\SuperISO.cmd
	
	echo Script Complete.
	pause
[Setup]
OutputBaseFilename=Torsion
AppName=Torsion IM
RestartIfNeededByRun=false
PrivilegesRequired=lowest
DefaultDirName={localappdata}\Torsion\
DisableProgramGroupPage=true
DisableDirPage=false
DisableReadyPage=true
DefaultGroupName=Torsion IM
AppID={{B700250B-D3E2-407F-A534-8818EB8E3D93}
AppVersion=1.0.0
UninstallDisplayName=Torsion IM
VersionInfoDescription=Torsion - Anonymous IM
VersionInfoProductName=Torsion
WizardImageFile=SetupModern11.bmp
[Files]
Source: ..\release\Torsion.exe; DestDir: {app}; DestName: Torsion.exe; Flags: replacesameversion
[Icons]
Name: {group}\Torsion; Filename: {app}\Torsion.exe; WorkingDir: {app}; Comment: Start Torsion IM
Name: {group}\Uninstall Torsion IM; Filename: {uninstallexe}
[Run]
Filename: {app}\Torsion.exe; WorkingDir: {app}; Description: Launch Torsion IM; Flags: postinstall
[Messages]
WelcomeLabel2=This will install [name] on your computer.
[Code]
procedure CurPageChanged(CurPageID: Integer);
begin
	if CurPageID = wpSelectDir then
		WizardForm.NextButton.Caption := SetupMessage(msgButtonInstall)
end;
// http://www.vincenzo.net/isxkb/index.php?title=Obtaining_the_application's_version
// http://www.vincenzo.net/isxkb/index.php?title=Uninstall_user_files




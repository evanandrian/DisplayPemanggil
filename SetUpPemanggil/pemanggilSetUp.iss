; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "PemanggilApps"
#define MyAppVersion "1.0"
#define MyAppPublisher "Efan Andrian"
#define MyAppExeName "PemanggilApps.exe"
#define MyAppAssocName MyAppName + " File"
#define MyAppAssocExt ".myp"
#define MyAppAssocKey StringChange(MyAppAssocName, " ", "") + MyAppAssocExt

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{6A528E5B-DEE4-4CE3-92DA-3DF717E81B4F}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
DefaultDirName={autopf}\{#MyAppName}
ChangesAssociations=yes
DisableProgramGroupPage=yes
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
OutputBaseFilename=pemanggilSetup
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Users\user\Documents\ME_FILE\Other\DisplayPemanggilApps\Pemanggil\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\user\Documents\ME_FILE\Other\DisplayPemanggilApps\Pemanggil\frmSettingKoneksi.frm"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\user\Documents\ME_FILE\Other\DisplayPemanggilApps\Pemanggil\frmSettingKoneksi.frx"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\user\Documents\ME_FILE\Other\DisplayPemanggilApps\Pemanggil\MSSCCPRJ.SCC"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\user\Documents\ME_FILE\Other\DisplayPemanggilApps\Pemanggil\Pemanggil.frm"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\user\Documents\ME_FILE\Other\DisplayPemanggilApps\Pemanggil\Pemanggil.frx"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\user\Documents\ME_FILE\Other\DisplayPemanggilApps\Pemanggil\PemanggilApps.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\user\Documents\ME_FILE\Other\DisplayPemanggilApps\Pemanggil\PemanggilApps.vbp"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\user\Documents\ME_FILE\Other\DisplayPemanggilApps\Pemanggil\PemanggilApps.vbw"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\user\Documents\ME_FILE\Other\DisplayPemanggilApps\Pemanggil\Setting.ini"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Registry]
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocExt}\OpenWithProgids"; ValueType: string; ValueName: "{#MyAppAssocKey}"; ValueData: ""; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}"; ValueType: string; ValueName: ""; ValueData: "{#MyAppAssocName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\{#MyAppExeName},0"
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: string; ValueName: ".myp"; ValueData: ""

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent


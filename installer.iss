; Butchies Video Converter AI – Windows-Installer (Inno Setup 6)
; Bringt alles mit: Programm (inkl. Python), FFmpeg + FFprobe mit allen Codecs (x264, x265, AAC, NVENC, Quick Sync, AMF,
; libvmaf für die Qualitäts-Messung, zimg für HDR) und installiert bei Bedarf die Microsoft WebView2-Laufzeit.
; Sucht das Laufwerk mit dem meisten freien Speicher und schlägt dort Programm- und Video-Ordner vor.
; Installation nur für den aktuellen Benutzer – keine Administratorrechte nötig.
#ifndef AppVersion
  #define AppVersion "1.0.0"
#endif

[Setup]
AppId={{6E2B9A41-3C7D-4F58-9B1E-7A4D2C8F5E13}
AppName=Butchies Video Converter AI
AppVersion={#AppVersion}
AppVerName=Butchies Video Converter AI {#AppVersion}
AppPublisher=Butchies
AppPublisherURL=https://butchies-groove.duckdns.org
DefaultDirName={code:BestInstallDir}
DefaultGroupName=Butchies Video Converter AI
DisableProgramGroupPage=yes
DisableDirPage=no
PrivilegesRequired=lowest
OutputDir=dist
OutputBaseFilename=Butchies_Video_Converter-Setup-{#AppVersion}
SetupIconFile=converter.ico
UninstallDisplayIcon={app}\Butchies_Video_Converter.exe
UninstallDisplayName=Butchies Video Converter AI
WizardStyle=modern
WizardSizePercent=110
WizardImageFile=installer-side.bmp
WizardSmallImageFile=installer-small.bmp
Compression=lzma2/ultra64
SolidCompression=yes
CloseApplications=force
RestartApplications=no
ArchitecturesAllowed=x64compatible
ArchitecturesInstallIn64BitMode=x64compatible
MinVersion=10.0

[Languages]
Name: "de"; MessagesFile: "compiler:Languages\German.isl"

[Messages]
WelcomeLabel1=Film ab!
WelcomeLabel2=Willkommen beim Setup von Butchies Video Converter AI [ver].%n%nGleich kann die KI deine Filme umwandeln:%n%n   •  H.264 / H.265 – bis zu 70 %% kleiner%n   •  Stimmen klarer, jeder Film gleich laut%n   •  Ordner-Abgleich mit deinem NAS%n%nKlicke auf „Weiter“, um fortzufahren.
WizardSelectDir=Szene 1: Ziel-Ordner wählen
SelectDirDesc=Wohin soll Butchies Video Converter AI installiert werden?
WizardSelectTasks=Szene 3: Verknüpfungen
SelectTasksDesc=Was soll zusätzlich eingerichtet werden?
WizardReady=Szene 4: Klappe – bereit zum Installieren
ReadyLabel1=Alles bereit. Klicke auf „Installieren“ – die Kamera läuft.
WizardInstalling=Dreh läuft … Installation
InstallingLabel=Butchies Video Converter AI wird installiert, einen Moment bitte …
FinishedHeadingLabel=Abspann – fertig installiert!
FinishedLabel=Butchies Video Converter AI ist bereit.%n%nZieh einfach deine Filme ins Programm – die KI macht den Rest.
ClickFinish=Klicke auf „Fertigstellen“, um das Setup zu beenden.
BeveledLabel=Butchies · Video Converter AI

[InstallDelete]
; alte Verknüpfungen ohne „AI“ im Namen entfernen
Type: files; Name: "{autodesktop}\Butchies Video Converter.lnk"
Type: files; Name: "{autoprograms}\Butchies Video Converter.lnk"

[Tasks]
Name: "desktopicon"; Description: "Verknüpfung auf dem Desktop anlegen"; GroupDescription: "Zusätzlich:"

[Files]
Source: "dist\Butchies_Video_Converter\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "ffmpeg\bin\*"; DestDir: "{app}\ffmpeg\bin"; Flags: ignoreversion recursesubdirs
Source: "ffmpeg\LICENSE.txt"; DestDir: "{app}\ffmpeg"; Flags: ignoreversion skipifsourcedoesntexist
Source: "installer-head.bmp"; Flags: dontcopy
Source: "LIESMICH.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "MicrosoftEdgeWebview2Setup.exe"; DestDir: "{tmp}"; Flags: deleteafterinstall; Check: NeedsWebView2

[Icons]
Name: "{autoprograms}\Butchies Video Converter AI"; Filename: "{app}\Butchies_Video_Converter.exe"; Comment: "Videos mit KI in H.264 / H.265 umwandeln"
Name: "{autodesktop}\Butchies Video Converter AI"; Filename: "{app}\Butchies_Video_Converter.exe"; Comment: "Videos mit KI in H.264 / H.265 umwandeln"; Tasks: desktopicon

[Run]
Filename: "{tmp}\MicrosoftEdgeWebview2Setup.exe"; Parameters: "/silent /install"; StatusMsg: "Microsoft WebView2 wird eingerichtet …"; Flags: waituntilterminated; Check: NeedsWebView2
Filename: "{app}\Butchies_Video_Converter.exe"; Description: "Butchies Video Converter AI jetzt starten – Film ab!"; Flags: nowait postinstall skipifsilent

[UninstallRun]
Filename: "{cmd}"; Parameters: "/c taskkill /f /im Butchies_Video_Converter.exe"; Flags: runhidden; RunOnceId: "StopConverter"

[UninstallDelete]
Type: files; Name: "{app}\install.json"

[Code]
const
  WV2 = '{F3017226-FE2A-4295-8BDF-00C3A9A7E4C5}';
  GB = 1073741824;

var
  BestDrive: String;
  BestFree: Int64;
  OutPage: TInputDirWizardPage;
  DriveInfo: TNewStaticText;

function GetDriveTypeW(lpRootPathName: String): Cardinal;
  external 'GetDriveTypeW@kernel32.dll stdcall';

function HasWV2(Root: Integer; Key: String): Boolean;
var
  V: String;
begin
  Result := RegQueryStringValue(Root, Key, 'pv', V) and (V <> '') and (V <> '0.0.0.0');
end;

function NeedsWebView2: Boolean;
begin
  Result := not (HasWV2(HKLM, 'SOFTWARE\WOW6432Node\Microsoft\EdgeUpdate\Clients\' + WV2) or
                 HasWV2(HKLM, 'SOFTWARE\Microsoft\EdgeUpdate\Clients\' + WV2) or
                 HasWV2(HKCU, 'Software\Microsoft\EdgeUpdate\Clients\' + WV2));
end;

{ Alle festen Laufwerke durchgehen und das mit dem meisten freien Speicher merken }
procedure FindBestDrive;
var
  I: Integer;
  Root: String;
  Free, Total: Int64;
begin
  BestDrive := ExtractFileDrive(ExpandConstant('{sd}'));
  BestFree := -1;
  for I := Ord('C') to Ord('Z') do
  begin
    Root := Chr(I) + ':\';
    if GetDriveTypeW(Root) = 3 then
      if GetSpaceOnDisk64(Root, Free, Total) then
        if Free > BestFree then
        begin
          BestFree := Free;
          BestDrive := Chr(I) + ':';
        end;
  end;
end;

function IsSystemDrive: Boolean;
begin
  Result := CompareText(BestDrive, ExtractFileDrive(ExpandConstant('{sd}'))) = 0;
end;

function FreeText: String;
begin
  if BestFree < 0 then
    Result := BestDrive
  else
    Result := BestDrive + ' (' + IntToStr(BestFree div GB) + ' GB frei)';
end;

function BestInstallDir(Param: String): String;
begin
  if IsSystemDrive then
    Result := ExpandConstant('{localappdata}\Programs\Butchies Video Converter')
  else
    Result := BestDrive + '\Programme\Butchies Video Converter';
end;

function BestVideoDir: String;
begin
  if IsSystemDrive then
    Result := ExpandConstant('{%USERPROFILE}\Videos\Butchies Converter')
  else
    Result := BestDrive + '\Butchies Converter\Videos';
end;

function InitializeSetup: Boolean;
begin
  FindBestDrive;
  Result := True;
end;

{ Blauer Kopfbereich mit Filmstreifen, weiße Schrift }
procedure FilmHeader;
var
  Bmp: TBitmapImage;
begin
  ExtractTemporaryFile('installer-head.bmp');
  WizardForm.MainPanel.Color := $913D0B;
  Bmp := TBitmapImage.Create(WizardForm);
  Bmp.Parent := WizardForm.MainPanel;
  Bmp.Left := 0;
  Bmp.Top := 0;
  Bmp.Width := WizardForm.MainPanel.Width;
  Bmp.Height := WizardForm.MainPanel.Height;
  Bmp.Stretch := True;
  Bmp.Bitmap.LoadFromFile(ExpandConstant('{tmp}\installer-head.bmp'));
  Bmp.SendToBack;
  WizardForm.PageNameLabel.Font.Color := clWhite;
  WizardForm.PageDescriptionLabel.Font.Color := $FEDBBF;
  WizardForm.PageNameLabel.Font.Size := WizardForm.PageNameLabel.Font.Size + 2;
  WizardForm.WizardSmallBitmapImage.BringToFront;
  WizardForm.PageNameLabel.BringToFront;
  WizardForm.PageDescriptionLabel.BringToFront;
  WizardForm.WelcomeLabel1.Font.Color := $913D0B;
  WizardForm.WelcomeLabel1.Font.Size := WizardForm.WelcomeLabel1.Font.Size + 6;
  WizardForm.FinishedHeadingLabel.Font.Color := $913D0B;
  WizardForm.FinishedHeadingLabel.Font.Size := WizardForm.FinishedHeadingLabel.Font.Size + 4;
  WizardForm.BeveledLabel.Font.Color := $8B7564;
end;

procedure InitializeWizard;
begin
  FilmHeader;

  DriveInfo := TNewStaticText.Create(WizardForm);
  DriveInfo.Parent := WizardForm.SelectDirPage;
  DriveInfo.Left := WizardForm.DirEdit.Left;
  DriveInfo.Top := WizardForm.DirEdit.Top + WizardForm.DirEdit.Height + ScaleY(16);
  DriveInfo.Width := WizardForm.DirEdit.Width;
  DriveInfo.AutoSize := False;
  DriveInfo.WordWrap := True;
  DriveInfo.Height := ScaleY(48);
  DriveInfo.Caption := 'KI-Vorschlag: Laufwerk ' + FreeText + ' hat den meisten freien Speicher – dort ist Platz für viele Filme.';
  DriveInfo.Font.Style := [fsBold];
  DriveInfo.Font.Color := $D84E1D;

  OutPage := CreateInputDirPage(wpSelectDir, 'Szene 2: Ordner für fertige Filme',
    'Wohin sollen die umgewandelten Videos gespeichert werden?',
    'Videos brauchen viel Platz – darum schlägt der Installer das Laufwerk mit dem meisten freien Speicher vor: ' +
    FreeText + '.' + #13#10 + 'Du kannst den Ordner später im Programm jederzeit ändern.',
    False, '');
  OutPage.Add('Fertige Videos:');
  OutPage.Values[0] := BestVideoDir;
end;

function JsonEsc(S: String): String;
begin
  Result := S;
  StringChangeEx(Result, '\', '\\', True);
  StringChangeEx(Result, '"', '\"', True);
end;

procedure CurStepChanged(CurStep: TSetupStep);
begin
  if CurStep = ssPostInstall then
  begin
    ForceDirectories(OutPage.Values[0]);
    SaveStringToFile(ExpandConstant('{app}\install.json'),
      '{"outdir": "' + JsonEsc(OutPage.Values[0]) + '", "drive": "' + BestDrive + '"}', False);
  end;
end;

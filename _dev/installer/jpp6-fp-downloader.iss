#define MyAppName "Jackbox Forsen Pack 6"
;#define MyAppVersion "latest"
#define MyAppPublisher "@G7_Eternal"
#define MyAppURL "https://github.com/g7eternal/jackbox-forsen-pack-6"
#define MyAppSourceURL "https://github.com/g7eternal/jackbox-forsen-pack-6/archive/refs/heads/main.zip"
#define MyAppExeName ""
; Advice: repack the installer every time you bump the version! (use a custom build script)

[Setup]
AppId={{3DFF9343-7C02-4E19-9C5D-06366FDA9B4A}
AppName={#MyAppName}
;AppVersion={#MyAppVersion}
AppVerName={#MyAppName} (latest version)
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppSourceURL}
CreateAppDir=yes
DefaultDirName={code:GetGamePath|}
DirExistsWarning=no
Uninstallable=no
PrivilegesRequired=lowest
OutputDir=target
OutputBaseFilename=jackbox-forsen-pack-6
SetupIconFile=favicon.ico
Compression=lzma
SolidCompression=yes
DisableWelcomePage=no
WizardStyle=modern
WizardImageFile=sidebar.bmp
WizardSmallImageFile=logo.bmp

[Types]
Name: "full"; Description: "Install everything!"
Name: "trivia"; Description: "Install custom questions only"
Name: "custom"; Description: "Custom: choose what to install"; Flags: iscustom

[Components]
Name: "core"; Description: "JFP6 Core files"; Types: full trivia custom; Flags: fixed
Name: "tmp2"; Description: "Trivia Murder Party 2"; Types: full custom;
Name: "tmp2\core"; Description: "TMP2: Custom minigames"; Types: full custom;
Name: "tmp2\questions"; Description: "TMP2: Custom questions pack"; Types: full trivia custom
Name: "tmp2\finals"; Description: "TMP2: Custom final round questions pack"; Types: full trivia custom
;Name: "tmp2\secrets"; Description: "TMP2: Custom secret round questions pack (the questions are very secret)"; Types: full custom

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
;Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"

[Tasks]
Name: tmp2_exclusive; Description: "Remove original Party Pack questions (new content will be used exclusively; if unchecked - new questions will be mixed with old)"; GroupDescription: "Trivia Murder Party 2"; Components: tmp2\questions or tmp2\finals
Name: tmp2_exclusive\questions; Description: "Remove all original Game Round questions"; GroupDescription: "Trivia Murder Party 2"; Components: tmp2\questions
Name: tmp2_exclusive\finals; Description: "Remove all original Final Round questions"; GroupDescription: "Trivia Murder Party 2"; Components: tmp2\finals

[Files]
; core: main menu, intros
Source: "{tmp}\jackbox-forsen-pack-6-main\videos\*"; DestDir: "{app}\videos"; Components: core; Flags: ignoreversion recursesubdirs createallsubdirs external
Source: "{tmp}\jackbox-forsen-pack-6-main\config.jet"; DestDir: "{app}"; Components: core; Flags: ignoreversion external
Source: "{tmp}\jackbox-forsen-pack-6-main\games\PartyPack\*"; DestDir: "{app}\games\PartyPack"; Components: core; Flags: ignoreversion recursesubdirs createallsubdirs external
; trivia murder party 2 content:
; - base/misc
Source: "{tmp}\jackbox-forsen-pack-6-main\games\TriviaDeath2\jbg.config.jet"; DestDir: "{app}\games\TriviaDeath2"; Components: "tmp2"; Flags: ignoreversion recursesubdirs createallsubdirs external
Source: "{tmp}\jackbox-forsen-pack-6-main\games\TriviaDeath2\Credits.html"; DestDir: "{app}\games\TriviaDeath2"; Components: "tmp2"; Flags: ignoreversion recursesubdirs createallsubdirs external
Source: "{tmp}\jackbox-forsen-pack-6-main\games\TriviaDeath2\settings.jet"; DestDir: "{app}\games\TriviaDeath2"; Components: "tmp2"; Flags: ignoreversion recursesubdirs createallsubdirs external
Source: "{tmp}\jackbox-forsen-pack-6-main\games\TriviaDeath2\Localization.json"; DestDir: "{app}\games\TriviaDeath2"; Components: "tmp2"; Flags: ignoreversion recursesubdirs createallsubdirs external
Source: "{tmp}\jackbox-forsen-pack-6-main\games\TriviaDeath2\wordlistPassword.txt"; DestDir: "{app}\games\TriviaDeath2"; Components: "tmp2"; Flags: ignoreversion recursesubdirs createallsubdirs external
Source: "{tmp}\jackbox-forsen-pack-6-main\games\TriviaDeath2\content\TDSequel.jet"; DestDir: "{app}\games\TriviaDeath2\content"; Components: "tmp2"; Flags: ignoreversion recursesubdirs createallsubdirs external
Source: "{tmp}\jackbox-forsen-pack-6-main\games\TriviaDeath2\videos\*"; DestDir: "{app}\games\TriviaDeath2\videos"; Components: "tmp2"; Flags: ignoreversion recursesubdirs createallsubdirs external
; - minigame content
Source: "{tmp}\jackbox-forsen-pack-6-main\games\TriviaDeath2\TriviaDeath2.swf"; DestDir: "{app}\games\TriviaDeath2"; Components: "tmp2\core"; Flags: ignoreversion recursesubdirs createallsubdirs external
Source: "{tmp}\jackbox-forsen-pack-6-main\games\TriviaDeath2\TMP2Host.bank"; DestDir: "{app}\games\TriviaDeath2"; Components: "tmp2\core"; Flags: ignoreversion recursesubdirs createallsubdirs external
Source: "{tmp}\jackbox-forsen-pack-6-main\games\TriviaDeath2\TalkshowExport\*"; DestDir: "{app}\games\TriviaDeath2\TalkshowExport"; Components: "tmp2\core"; Flags: ignoreversion recursesubdirs createallsubdirs external
Source: "{tmp}\jackbox-forsen-pack-6-main\games\TriviaDeath2\content\TDDictation.jet"; DestDir: "{app}\games\TriviaDeath2\content"; Components: "tmp2\core"; Flags: ignoreversion recursesubdirs createallsubdirs external
Source: "{tmp}\jackbox-forsen-pack-6-main\games\TriviaDeath2\content\TDMirror.jet"; DestDir: "{app}\games\TriviaDeath2\content"; Components: "tmp2\core"; Flags: ignoreversion recursesubdirs createallsubdirs external
Source: "{tmp}\jackbox-forsen-pack-6-main\games\TriviaDeath2\content\TDMindMeld.jet"; DestDir: "{app}\games\TriviaDeath2\content"; Components: "tmp2\core"; Flags: ignoreversion recursesubdirs createallsubdirs external
Source: "{tmp}\jackbox-forsen-pack-6-main\games\TriviaDeath2\content\TDMindMeld\*"; DestDir: "{app}\games\TriviaDeath2\content\TDMindMeld"; Components: "tmp2\core"; Flags: ignoreversion recursesubdirs createallsubdirs external
Source: "{tmp}\jackbox-forsen-pack-6-main\games\TriviaDeath2\content\QuiplashContent.jet"; DestDir: "{app}\games\TriviaDeath2\content"; Components: "tmp2\core"; Flags: ignoreversion recursesubdirs createallsubdirs external
Source: "{tmp}\jackbox-forsen-pack-6-main\games\TriviaDeath2\content\QuiplashContent\*"; DestDir: "{app}\games\TriviaDeath2\content\QuiplashContent"; Components: "tmp2\core"; Flags: ignoreversion recursesubdirs createallsubdirs external
Source: "{tmp}\jackbox-forsen-pack-6-main\games\TriviaDeath2\content\TDRules\*"; DestDir: "{app}\games\TriviaDeath2\content\TDRules"; Components: "tmp2\core"; Flags: ignoreversion recursesubdirs createallsubdirs external
; - questions
Source: "{tmp}\jackbox-forsen-pack-6-main\games\TriviaDeath2\content\TDQuestion\*"; DestDir: "{app}\games\TriviaDeath2\content\TDQuestion"; Components: "tmp2\questions"; Flags: ignoreversion recursesubdirs createallsubdirs external
Source: "{tmp}\jackbox-forsen-pack-6-main\games\TriviaDeath2\content\TDQuestion.jet"; DestDir: "{app}\games\TriviaDeath2\content"; Components: "tmp2\questions"; Tasks: tmp2_exclusive\questions; Flags: ignoreversion recursesubdirs createallsubdirs external
Source: "{tmp}\jackbox-forsen-pack-6-main\games\TriviaDeath2\content\TDFinalRound\*"; DestDir: "{app}\games\TriviaDeath2\content\TDFinalRound"; Components: "tmp2\finals"; Flags: ignoreversion recursesubdirs createallsubdirs external
Source: "{tmp}\jackbox-forsen-pack-6-main\games\TriviaDeath2\content\TDFinalRound.jet"; DestDir: "{app}\games\TriviaDeath2\content"; Components: "tmp2\finals"; Tasks: tmp2_exclusive\finals; Flags: ignoreversion recursesubdirs createallsubdirs external
;Source: "D:\Share\nodes\jackbox-forsen-pack-6\games\TriviaDeath2\content\TDQuestion*.jet"; DestDir: "{app}\games\TriviaDeath2\content"; Components: "tmp2\secrets"; Flags: ignoreversion recursesubdirs createallsubdirs
; - fallback: merged questions and finals
Source: "{tmp}\jackbox-forsen-pack-6-main\_dev\TDQuestion.jet"; DestDir: "{app}\games\TriviaDeath2\content"; Components: "tmp2\questions"; Tasks: not tmp2_exclusive\questions; Flags: ignoreversion external
Source: "{tmp}\jackbox-forsen-pack-6-main\_dev\TDFinalRound.jet"; DestDir: "{app}\games\TriviaDeath2\content"; Components: "tmp2\finals"; Tasks: not tmp2_exclusive\finals; Flags: ignoreversion external

; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Code]
const Steam32RegPath = 'SOFTWARE\Valve\Steam';
      Steam64RegPath = 'SOFTWARE\Wow6432Node\Valve\Steam';
      SteamLibPathDiv= '"'#9#9'"';
      SteamAppsFolder= 'SteamApps';
      JB_BasePath    = 'SteamApps\common\The Jackbox Party Pack 6';
      JB_ZipContainer= 'jpp6-forsen-pack-source.zip';
      // shell flags (for unzipper)
      SHCONTCH_NOPROGRESSBOX = 4;
      SHCONTCH_RESPONDYESTOALL = 16;

var SteamPath: string;
    SteamLibraryList: TArrayOfString;
    JBPath: string;
    DownloadPage: TDownloadWizardPage;

function GetGamePath(ObsoleteParam: string): string; // looks for the Jackbox folder
var i: Integer;
    j: Integer;
    libCount: Integer;
    subpos: Integer;
    tryThisPath: String;
begin
  if Length(JBPath) > 0 then begin // if path was found earlier, return it
    Log('Game folder already found! Path: '+JBPath);
    Result := JBPath;
    exit;
  end;
  JBPath := '';
  if //find Steam install path from registry
    not(RegQueryStringValue(HKEY_LOCAL_MACHINE, Steam32RegPath, 'InstallPath', SteamPath))
    and 
    not(RegQueryStringValue(HKEY_LOCAL_MACHINE, Steam64RegPath, 'InstallPath', SteamPath))
  then begin
    Log('Failed to find Steam install path in Registry!');
    SteamPath := '';
  end else Log('Found Steam install path: '+SteamPath);
  if (LoadStringsFromFile(AddBackslash(SteamPath) + AddBackslash(SteamAppsFolder) + 'libraryfolders.vdf', SteamLibraryList))
  then begin // find Steam libraries present on PC
    libCount := 1;
    for i := 0 to Length(SteamLibraryList)-1 do begin
      subpos := Pos(SteamLibPathDiv, SteamLibraryList[i]);
      if subpos > 0
        then begin
          SteamLibraryList[i] := Copy(SteamLibraryList[i], subpos+Length(SteamLibPathDiv), Length(SteamLibraryList[i]));
          SteamLibraryList[i] := Copy(SteamLibraryList[i], 0, Length(SteamLibraryList[i])-1); // remove trailing quotes
          libCount := libCount + 1;
          j := 1;
          while (j < Length(SteamLibraryList[i])) do begin // replace double backslash into single backslash
            if (SteamLibraryList[i][j] = '\') and (SteamLibraryList[i][j+1] = '\')
              then begin
                Delete(SteamLibraryList[i], j, 1);
                j := j - 1;
              end;
            j := j + 1;
          end;
        end else SteamLibraryList[i] := '';
    end;
    SetArrayLength(SteamLibraryList, GetArrayLength(SteamLibraryList) + 1);
    SteamLibraryList[High(SteamLibraryList)] := SteamPath;
    Log('Found 1+'+IntToStr(libCount-3)+' Steam library folder variants');
    // let's try to find the installed jackbox game
    for i := 0 to Length(SteamLibraryList)-1 do begin
      if DirExists(AddBackSlash(SteamLibraryList[i])) then begin
        tryThisPath := AddBackSlash(SteamLibraryList[i])+JB_BasePath;
        if DirExists(tryThisPath)
          then begin
            Log('Found JPP6 game at: '+tryThisPath);
            JBPath := tryThisPath;
          end;
      end;
    end;
  end else Log('Failed to read libraryfolders.vdf!');
  Result := JBPath;
end;

function NextButtonClick(CurPageID: Integer): Boolean; // controls proper folder selection
begin
  Case CurPageId of
    wpWelcome: begin
      if Length(GetGamePath('')) < 1 // try to find the game in steamlibrary
        then Result := (MsgBox('We couldn''t find "The Jackbox Party Pack 6" game on your PC!'#13#10
            'You need to install Steam, then purchase and install the base game in order to enjoy this pack!'#13#10#13#10
            'You can ignore this message and try to find the game folder manually.'#13#10
            'Do you want to continue installation?',
            mbError, MB_YESNO) = IDYES)
        else Result := True; // game has been found automatically
    end;
    wpSelectDir: begin // for user selected install path: detect if game exists in folder
      if not(FileExists(AddBackSlash(ExpandConstant('{app}'))+'The Jackbox Party Pack 6.exe'))
        then begin
          MsgBox('Could not detect the base game at "'+ExpandConstant('{app}')+'"!'#13#10
            'You need to select a valid folder within Steam apps!', mbCriticalError, mb_OK);
          Result := false;
        end else Result := true;
    end;
    wpReady: begin
      DownloadPage.Clear;
      DownloadPage.Add(ExpandConstant('{#MyAppSourceURL}'), JB_ZipContainer, '');
      DownloadPage.Show;
      try
        try
          DownloadPage.Download; // This downloads the files to {tmp}
          Result := True;
        except
          if DownloadPage.AbortedByUser then begin
            //SuppressibleMsgBox('Download has been cancelled!', mbInformation, MB_OK, IDOK);
            Log('Aborted by user.')
          end else
            SuppressibleMsgBox(AddPeriod(GetExceptionMessage), mbCriticalError, MB_OK, IDOK);
          Result := False;
        end;
      finally
        DownloadPage.Hide;
      end;
    end;
    else Result := true;
  end;
end;

// ONLINE DOWNLOADER STUFF

// https://stackoverflow.com/questions/6065364
procedure UnZip(ZipPath, TargetPath: string);

var
  Shell: Variant;
  ZipFile: Variant;
  TargetFolder: Variant;
begin
  Shell := CreateOleObject('Shell.Application');

  ZipFile := Shell.NameSpace(ZipPath);
  if VarIsClear(ZipFile) then
    RaiseException(Format('ZIP file "%s" does not exist or cannot be opened', [ZipPath]));

  ForceDirectories(TargetPath);
  TargetFolder := Shell.NameSpace(TargetPath);
  if VarIsClear(TargetFolder) then
    RaiseException(Format('Target path "%s" could not be created', [TargetPath]));

  TargetFolder.CopyHere(ZipFile.Items, SHCONTCH_NOPROGRESSBOX or SHCONTCH_RESPONDYESTOALL);
end;

function OnDownloadProgress(const Url, FileName: String; const Progress, ProgressMax: Int64): Boolean;
begin
  if Progress = ProgressMax then begin
    Log(Format('Successfully downloaded file to {tmp}: %s', [FileName]));
  end;
  Result := True;
end;

procedure InitializeWizard; // create a download page to fetch git contents
begin
  DownloadPage := CreateDownloadPage(SetupMessage(msgWizardPreparing), SetupMessage(msgPreparingDesc), @OnDownloadProgress);
end;

procedure CurStepChanged(CurStep: TSetupStep); // notifications and shit
var targetPath: string;
begin
  Case CurStep of
    ssInstall: begin
      Log('Starting pre-install work...');
      // unzip contents into temp location
      targetPath := ExpandConstant('{tmp}');
      Log(Format('Unzipping files into %s', [targetPath]));
      UnZip(
        AddBackSlash(ExpandConstant('{tmp}')) + JB_ZipContainer ,
        targetPath
      );
      // end pre-install
      Log('Pre-install work ended. We will now copy the files.');
    end;
    ssPostInstall: begin // shows info message
      MsgBox('Jackbox Forsen Pack 6 has been installed!'#13#10#13#10
        'In order to remove it, please verify the game files in Steam. (I''m too lazy to make a proper uninstaller LULE)'#13#10#13#10
        'Anyways... Thank you for using our hypermodern install system!'#13#10'Hope you have some fun with the pack!',
        mbInformation, MB_OK);
      end;
  end;
end;


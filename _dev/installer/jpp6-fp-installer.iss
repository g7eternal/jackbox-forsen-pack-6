#define MyAppName "Jackbox Forsen Pack 6"
#define MyAppVersion "0.0.2"
#define MyAppPublisher "@G7_Eternal"
#define MyAppURL "https://github.com/g7eternal/jackbox-forsen-pack-6"
#define MyAppExeName ""
; Advice: repack the installer every time you bump the version! (use a custom build script)

[Setup]
AppId={{3DFF9343-7C02-4E19-9C5D-06366FDA9B4A}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
CreateAppDir=yes
DefaultDirName={code:GetGamePath|}
DirExistsWarning=no
; User will have to remove the pack manually! 
Uninstallable=no
PrivilegesRequired=lowest
OutputDir=D:\Share\nodes\jackbox-forsen-pack-6\_dev\installer\target
OutputBaseFilename=jackbox-forsen-pack-6
SetupIconFile=D:\Share\nodes\jackbox-forsen-pack-6\_dev\installer\favicon.ico
Compression=lzma
SolidCompression=yes
DisableWelcomePage=no
WizardStyle=modern
WizardImageFile=D:\Share\nodes\jackbox-forsen-pack-6\_dev\installer\sidebar.bmp
WizardSmallImageFile=D:\Share\nodes\jackbox-forsen-pack-6\_dev\installer\logo.bmp

[Types]
Name: "full"; Description: "Install everything!"
Name: "custom"; Description: "Choose what to install"; Flags: iscustom

[Components]
Name: "core"; Description: "JFP6 Core files"; Types: full custom; Flags: fixed
Name: "tmp2"; Description: "Trivia Murder Party 2"; Types: full custom;
Name: "tmp2\questions"; Description: "TMP2: Custom questions pack"; Types: full custom
Name: "tmp2\finals"; Description: "TMP2: Custom final round questions pack"; Types: full custom
Name: "tmp2\secrets"; Description: "TMP2: Custom secret round questions pack (the questions are very secret)"; Types: full custom
Name: "tmp2\mirror"; Description: "TMP2: Custom Mirror minigame words"; Types: full custom
Name: "tmp2\dictation"; Description: "TMP2: Custom Dictation minigame texts"; Types: full custom
Name: "tmp2\mindmeld"; Description: "TMP2: Custom Mind Meld minigame prompts"; Types: full custom

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
;Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"

[Tasks]
Name: tmp2_exclusive; Description: "Remove original Party Pack content (new content will be used exclusively)"; GroupDescription: "Trivia Murder Party 2"; Components: tmp2
Name: tmp2_exclusive\questions; Description: "Remove all original Game Round questions"; GroupDescription: "Trivia Murder Party 2"; Components: tmp2
Name: tmp2_exclusive\finals; Description: "Remove all original Final Round questions"; GroupDescription: "Trivia Murder Party 2"; Components: tmp2

[Files]
; core: main menu, intros
Source: "D:\Share\nodes\jackbox-forsen-pack-6\videos\*"; DestDir: "{app}\videos"; Components: core; Flags: ignoreversion recursesubdirs createallsubdirs
; trivia murder party 2 content:
; - base/misc
Source: "D:\Share\nodes\jackbox-forsen-pack-6\games\TriviaDeath2\content\TDSequel.jet"; DestDir: "{app}\games\TriviaDeath2\content"; Components: "tmp2"; Flags: ignoreversion recursesubdirs createallsubdirs
; - questions
;Source: "D:\Share\nodes\jackbox-forsen-pack-6\games\TriviaDeath2\content\TDQuestions\*"; DestDir: "{app}\games\TriviaDeath2\content\TDQuestions"; Components: "tmp2\questions"; Flags: ignoreversion recursesubdirs createallsubdirs
;Source: "D:\Share\nodes\jackbox-forsen-pack-6\games\TriviaDeath2\content\TDQuestions.jet"; DestDir: "{app}\games\TriviaDeath2\content"; Components: "tmp2\questions"; Flags: ignoreversion recursesubdirs createallsubdirs
;Source: "D:\Share\nodes\jackbox-forsen-pack-6\games\TriviaDeath2\content\TDFinalRound\*"; DestDir: "{app}\games\TriviaDeath2\content\TDFinalRound"; Components: "tmp2\finals"; Flags: ignoreversion recursesubdirs createallsubdirs
;Source: "D:\Share\nodes\jackbox-forsen-pack-6\games\TriviaDeath2\content\TDFinalRound.jet"; DestDir: "{app}\games\TriviaDeath2\content"; Components: "tmp2\finals"; Flags: ignoreversion recursesubdirs createallsubdirs
;Source: "D:\Share\nodes\jackbox-forsen-pack-6\games\TriviaDeath2\content\TDQuestions.jet"; DestDir: "{app}\games\TriviaDeath2\content"; Components: "tmp2\secrets"; Flags: ignoreversion recursesubdirs createallsubdirs
; - dictation
Source: "D:\Share\nodes\jackbox-forsen-pack-6\games\TriviaDeath2\TriviaDeath2.swf"; DestDir: "{app}\games\TriviaDeath2"; Components: "tmp2\dictation"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "D:\Share\nodes\jackbox-forsen-pack-6\games\TriviaDeath2\TMP2Host.bank"; DestDir: "{app}\games\TriviaDeath2"; Components: "tmp2\dictation"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "D:\Share\nodes\jackbox-forsen-pack-6\games\TriviaDeath2\content\TDDictation.jet"; DestDir: "{app}\games\TriviaDeath2\content"; Components: "tmp2\dictation"; Flags: ignoreversion recursesubdirs createallsubdirs
; - mirror
Source: "D:\Share\nodes\jackbox-forsen-pack-6\games\TriviaDeath2\content\TDMirror.jet"; DestDir: "{app}\games\TriviaDeath2\content"; Components: "tmp2\mirror"; Flags: ignoreversion recursesubdirs createallsubdirs
; - mind meld
Source: "D:\Share\nodes\jackbox-forsen-pack-6\games\TriviaDeath2\content\TDMindMeld.jet"; DestDir: "{app}\games\TriviaDeath2\content"; Components: "tmp2\mindmeld"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "D:\Share\nodes\jackbox-forsen-pack-6\games\TriviaDeath2\content\TDMindMeld\*"; DestDir: "{app}\games\TriviaDeath2\content\TDMindMeld"; Components: "tmp2\mindmeld"; Flags: ignoreversion recursesubdirs createallsubdirs

; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Code]
const Steam32RegPath = 'SOFTWARE\Valve\Steam';
      Steam64RegPath = 'SOFTWARE\Wow6432Node\Valve\Steam';
      SteamLibPathDiv= '"'#9#9'"';
      SteamAppsFolder= 'SteamApps';
      JB_BasePath    = 'SteamApps\common\The Jackbox Party Pack 6';

var SteamPath: string;
    SteamLibraryList: TArrayOfString;
    JBPath: string;

procedure ExitProcess(uExitCode: Integer);
  external 'ExitProcess@kernel32.dll stdcall';

function GetGamePath(ObsoleteParam: string): string;
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

function NextButtonClick(CurPageID: Integer): Boolean;
begin
  Case CurPageId of
    wpWelcome: begin
      if Length(GetGamePath('')) < 1 // try to find the game in steamlibrary
        then begin
          if (MsgBox('We couldn''t find "The Jackbox Party Pack 6" game on your PC!'#13#10
            'You need to install Steam, then purchase and install the base game in order to enjoy this pack!'#13#10#13#10
            'You can ignore this message and try to find the game folder manually.'#13#10
            'Do you want to continue installation?',
            mbError, MB_YESNO) = IDYES)
            then begin // user will find folder manually
              Result := true; 
            end else begin // user will buy the game Copesen
              WizardForm.Hide();
              MsgBox(
              'The install wizard could not locate the folder with the base game.'#13#10#13#10
              'In order to enjoy the custom content you must own the original Jackbox Party Pack 6 game!'#13#10
              'Please purchase the game from the Steam store at https://steampowered.com',
              mbCriticalError, MB_OK);
              ExitProcess(1);
              Result := false;
            end;
        end else Result := True; // game has been found automatically
    end;
    wpSelectDir: begin // for user selected install path: detect if game exists in folder
      if not(FileExists(AddBackSlash(ExpandConstant('{app}'))+'The Jackbox Party Pack 6.exe'))
        then begin
          MsgBox('Could not detect the base game at "'+ExpandConstant('{app}')+'"!'#13#10
            'You need to select a valid folder within Steam apps!', mbCriticalError, mb_OK);
          Result := false;
        end else Result := true;
    end;
    else Result := true;
  end;
end;

procedure CurStepChanged(CurStep: TSetupStep);
begin
  Case CurStep of
    ssInstall: begin
      Log('Starting pre-install work...');
      // TODO: try to make a JSON merger...
      // As for now, keep two versions of .jet files
      Log('Pre-install work ended. We will now copy the files.');
    end;
    ssPostInstall: begin // shows info message
      MsgBox('Jackbox Forsen Pack 6 has been installed!'#13#10#13#10
        'In order to remove it, please verify the game files in Steam. (I''m too lazy to make a proper uninstaller LULE)'#13#10#13#10
        'Anyways... Thank you, '+GetUserNameString()+', for using our hypermodern install system!'#13#10'Hope you have some fun with the pack!',
        mbInformation, MB_OK);
      end;
  end;
end;


;NSIS Modern User Interface
;Welcome/Finish Page Example Script
;Written by Joost Verburg

;--------------------------------
;Include Modern UI

  !include "MUI2.nsh"

;--------------------------------
;Variables

  Var StartMenuFolder

;--------------------------------
;General
  !define MUI_KEY "Software\CodeAnalyzer"

  ;Name and file
  Name "Анализатор кода 1С"
  OutFile "codeAnalyzer.exe"

  ;Default installation folder
  InstallDir "$PROGRAMFILES\codeAnalyzer\"

  ;Get installation folder from registry if available
  ;InstallDirRegKey HKLM "Software\XMind Ltd\XMind" "Path"

  ;Request application privileges for Windows Vista
  RequestExecutionLevel user

;--------------------------------
;Interface Settings

  !define MUI_ABORTWARNING

;--------------------------------
;Pages

  !insertmacro MUI_PAGE_WELCOME
  !insertmacro MUI_PAGE_LICENSE "License.txt"
  ;!insertmacro MUI_PAGE_COMPONENTS
  !insertmacro MUI_PAGE_DIRECTORY

  ;Start Menu Folder Page Configuration
  !define MUI_STARTMENUPAGE_REGISTRY_ROOT "HKCU" 
  !define MUI_STARTMENUPAGE_REGISTRY_KEY "Software\codeAnalyzer" 
  !define MUI_STARTMENUPAGE_REGISTRY_VALUENAME "Анализатор кода 1С"
  
  !insertmacro MUI_PAGE_STARTMENU Application $StartMenuFolder

  !insertmacro MUI_PAGE_INSTFILES
  
    ;These indented statements modify settings for MUI_PAGE_FINISH
    !define MUI_FINISHPAGE_NOAUTOCLOSE
    !define MUI_FINISHPAGE_RUN
    !define MUI_FINISHPAGE_RUN_NOTCHECKED
    !define MUI_FINISHPAGE_RUN_TEXT "Запустить приложение"
    !define MUI_FINISHPAGE_RUN_FUNCTION "LaunchLink"
    !define MUI_FINISHPAGE_SHOWREADME_NOTCHECKED
    !define MUI_FINISHPAGE_SHOWREADME $INSTDIR\readme.txt
  !insertmacro MUI_PAGE_FINISH

  !insertmacro MUI_UNPAGE_WELCOME
  !insertmacro MUI_UNPAGE_CONFIRM
  !insertmacro MUI_UNPAGE_INSTFILES
  !insertmacro MUI_UNPAGE_FINISH

;--------------------------------
;Languages

  !insertmacro MUI_LANGUAGE "Russian"

;--------------------------------
;Installer Sections

Section "install" 

  ;MessageBox MB_OK "OK"

  SetOutPath "$INSTDIR"

  ;ADD YOUR OWN FILES HERE...
  FILE /r "codeanalyzer\*.*"
  
  FILE License.txt
  FILE readme.txt
  
  ;Store installation folder
  ;WriteRegStr HKLM "${MUI_KEY}" "" $INSTDIR

  ;Create uninstaller
  WriteUninstaller "$INSTDIR\Uninstall.exe"

  !insertmacro MUI_STARTMENU_WRITE_BEGIN Application
    
    ;Create shortcuts
    CreateDirectory "$SMPROGRAMS\$StartMenuFolder"
    CreateShortCut "$SMPROGRAMS\$StartMenuFolder\Анализатор кода 1С.lnk" "$INSTDIR\codeanalyzer.exe"
    CreateShortCut "$SMPROGRAMS\$StartMenuFolder\Удалить.lnk" "$INSTDIR\Uninstall.exe"
  
  !insertmacro MUI_STARTMENU_WRITE_END

SectionEnd

;--------------------------------
;Uninstaller Section

Section "Uninstall"

  ;ADD YOUR OWN FILES HERE...

  Delete "$INSTDIR\Uninstall.exe"
  Delete "$INSTDIR\*.*"

  RMDir /r "$INSTDIR\configuration"
  RMDir /r "$INSTDIR\features"
  RMDir /r "$INSTDIR\p2"
  RMDir /r "$INSTDIR\plugins"
  RMDir /r "$INSTDIR\workspace"

  ;DeleteRegKey /ifempty HKCU "Software\Modern UI Test"

  !insertmacro MUI_STARTMENU_GETFOLDER Application $StartMenuFolder
    
  Delete "$SMPROGRAMS\$StartMenuFolder\Анализатор кода 1С.lnk"
  Delete "$SMPROGRAMS\$StartMenuFolder\Удалить.lnk"
  RMDir "$SMPROGRAMS\$StartMenuFolder"
  
  DeleteRegKey /ifempty HKCU "Software\codeAnalyzer"

SectionEnd

;--------------------------------
Function LaunchLink  
  ExecShell "" "$INSTDIR\codeanalyzer.exe"
FunctionEnd
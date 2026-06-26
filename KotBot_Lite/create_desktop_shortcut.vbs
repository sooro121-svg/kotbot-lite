Set fso = CreateObject("Scripting.FileSystemObject")
Set shell = CreateObject("WScript.Shell")
base = fso.GetParentFolderName(WScript.ScriptFullName)
desktop = shell.SpecialFolders("Desktop")
Set link = shell.CreateShortcut(desktop & "\KotBot Lite.lnk")
link.TargetPath = "wscript.exe"
link.Arguments = Chr(34) & base & "\start_kotbot.vbs" & Chr(34)
link.WorkingDirectory = base
link.IconLocation = base & "\assets\kotbot.ico"
link.Description = "KotBot Lite"
link.Save
MsgBox "Ярлык KotBot Lite создан на рабочем столе.", 64, "KotBot Lite"

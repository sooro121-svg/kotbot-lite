Set fso = CreateObject("Scripting.FileSystemObject")
Set shell = CreateObject("WScript.Shell")
base = fso.GetParentFolderName(WScript.ScriptFullName)
shell.CurrentDirectory = base
cmd = "cmd /c ""pushd """"" & base & """"" && python -m pip install -r requirements.txt >nul 2>&1 && (pyw -3 main.py || pythonw main.py || python main.py)"""
shell.Run cmd, 0, False

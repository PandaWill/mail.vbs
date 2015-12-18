'Usage:
'echo test body 123 | cscript.exe mail.vbs my-mailserver.com do-not-reply@my-mailserver.com bob@email.com,alice@email.com "Test Title"

mailServer	= WScript.Arguments.Item(0)
sender		= WScript.Arguments.Item(1)
sendTo 		= WScript.Arguments.Item(2)
subject     	= WScript.Arguments.Item(3)
emailBody	= WScript.StdIn.ReadAll()

Set objMessage = CreateObject("CDO.Message") 
objMessage.Subject = subject 
objMessage.From = sender 
objMessage.To = sendTo 
objMessage.TextBody = emailBody

objMessage.Configuration.Fields.Item _
("http://schemas.microsoft.com/cdo/configuration/sendusing") = 2 
objMessage.Configuration.Fields.Item _
("http://schemas.microsoft.com/cdo/configuration/smtpserver") = mailServer
objMessage.Configuration.Fields.Item _
("http://schemas.microsoft.com/cdo/configuration/smtpserverport") = 25 

objMessage.Configuration.Fields.Update

objMessage.Send

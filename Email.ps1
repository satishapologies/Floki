# Send email it as a HTML body.
$smtpServer = "smtp.gmail.com"
$MailFrom = "satishapologies@gmail.com"
$mailto = "satish_apologies@gmail.com"
$msg = new-object Net.Mail.MailMessage 
$smtp = new-object Net.Mail.SmtpClient($smtpServer) 
$msg.From = $MailFrom
$msg.IsBodyHTML = $true
$msg.To.Add($Mailto) 
$msg.Subject = "Report-Test."
$MailTextT =  Get-Content  -Path C:\temp\Reports\Report.html
$msg.Body = $MailTextT
$smtp.Send($msg) 
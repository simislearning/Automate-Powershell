"%windir%\System32\WindowsPowerShell\v1.0\powershell.exe" -noprofile -command "& {$IoCs = @('web.aspx','help.aspx','document.aspx','erroEE.aspx','errorEEE.aspx','errorEW.aspx','healthcheck.aspx','aspnet_www.aspx','aspnet_client.aspx','xx.aspx','shell.aspx','aspnet_iisstart.aspx','one.aspx','errorcheck.aspx','t.aspx','discover.aspx','aspnettest.aspx','error.aspx');foreach($IoC in $IoCs){if(test-path c:\inetpub\wwwroot\aspnet_client\$IoC){write-output "Alert webshell in aspnet"};if(test-path C:\inetpub\wwwroot\aspnet_client\system_web\$IoC){write-output "Alert webshell in system_web"};if(test-path C:\Exchange\FrontEnd\HttpProxy\owa\auth\$IoC){write-output "Alert webshell in Exchange Auth"}}}"

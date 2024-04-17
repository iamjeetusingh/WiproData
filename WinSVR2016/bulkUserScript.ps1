$Users = Import-csv C:\Users\jeetu\Desktop\addingBulkUsers.csv

foreach ($User in $Users)
{
	$Username = $User.username
	$Password = $User.password
	$Firstname = $User.firstname
	$Lastname = $User.lastname
	$OU = $User.ou 
	$Password = $User.Password

	if (Get-ADUser -F {SamAccountName -eq $Username})
	{
		Write-Warning "A user account with username $Username already exist."
	}
	else
	{
		New-ADUser `
	    -SamAccountName $Username `
	    -UserPrincipalName "$Username@jeetusingh.in" `
	    -Name "$Firstname $Lastname" `
	    -GivenName $Firstname `
	    -Surname $Lastname `
	    -Enabled $True `
	    -DisplayName "$Lastname, $Firstname" `
	    -Path $OU `
	    -AccountPassword (convertto-securestring $Password -AsPlainText -Force) `
        -ChangePasswordAtLogon $True
            
	}
}

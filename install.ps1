################################################################################
#
# Author: 			Andrew Crisp
# Author email: 		crispa@slhs.org
# Organization:			St Luke's Health System
# Filename: 			install
# Comments:			run to install vim files on a windows system
#						
#						
################################################################################
################################################################################
# Reviewed by 1:	<1st reviewer>
# Reviewed by 2:	<2nd reviewer>
################################################################################

function Get-ScriptDirectory
{
	<#  
.SYNOPSIS  
Returns the execution directory.
#>
	if ($hostinvocation -ne $null)
	{
		Split-Path $hostinvocation.MyCommand.path
	}
	else
	{
		Split-Path $script:MyInvocation.MyCommand.Path
	}
} ## function Get-ScriptDirectory

$pthScript = Get-ScriptDirectory

Copy-Item -Path (Join-Path -Path $pthScript -ChildPath "homedir\_vimrc") -Destination $env:HOME -Force
Copy-Item -Path (Join-Path -Path $pthScript -ChildPath "homedir\.vim") -Destination $env:HOME -Recurse -Force


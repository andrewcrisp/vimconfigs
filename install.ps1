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

Copy-Item -Path (Join-Path -Path $pthScript -ChildPath "homedir\_vimrc") -Destination (Join-Path -Path ($env:HOMEDRIVE) -ChildPath ($env:HOMEPATH)) -Force
Copy-Item -Path (Join-Path -Path $pthScript -ChildPath "homedir\vimfiles") -Destination (Join-Path -Path ($env:HOMEDRIVE) -ChildPath ($env:HOMEPATH)) -Recurse -Force


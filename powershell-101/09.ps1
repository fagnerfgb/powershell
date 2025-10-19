#Autor: Fagner Geraldes Braga  
#Data de criação: 07/10/2025  
#Data de atualização: 09/10/2025  
#Versão: 0.02

$env:PSModulePath
Get-Verb | Sort-Object -Property Verb

# A simple function
function Get-Version {
    $PSVersionTable.PSVersion
}

Get-Version

function Get-PSVersion {
    $PSVersionTable.PSVersion
}

Get-PSVersion

function Get-FGBPSVersion {
    $PSVersionTable.PSVersion
}

Get-FGBPSVersion

Get-ChildItem -Path Function:\Get-*Version
Get-ChildItem -Path Function:\Get-*Version | Remove-Item
Get-ChildItem -Path Function:\Get-*Version

# Parameters
function Test-FGBParameter {
    param ($ComputerName)
    Write-Output $ComputerName
}

Test-FGBParameter DC01

function Get-FGBParameterCount {
    param([string[]]$ParameterName)
    foreach ($Parameter in $ParameterName){
        $Results = Get-Command -ParameterName $Parameter -ErrorAction SilentlyContinue
        [PSCustomObject]@{
            ParameterName = $Parameter
            NumberOfCmdlets = $Results.Count
        }
    }
}

Get-FGBParameterCount -ParameterName ComputerName, Computer, ServerName, Host, Machine

# Advanced Functions
function Test-FGBParameter {
    param ($ComputerName)
    Write-Output $ComputerName
}

Get-Command -Name Test-FGBParameter -Syntax
(Get-Command -Name Test-FGBParameter).Parameters.Keys

function Test-FGBCmdletBinding {
    [CmdletBinding()]
    param($ComputerName)
    Write-Output $ComputerName
}

Get-Command -Name Test-FGBCmdletBinding -Syntax
(Get-Command -Name Test-FGBCmdletBinding).Parameters.Keys

#SupportsShouldProcess
function Test-FGBSupportsShouldProcess {
    [CmdletBinding(SupportsShouldProcess)]
    param ($ComputerName)
    Write-Output $ComputerName
}

Get-Command -Name Test-FGBSupportsShouldProcess -Syntax
(Get-Command -Name Test-FGBSupportsShouldProcess).Parameters.Keys

# Parameter Validation
function Test-FGBParameterValidation {
    [CmdletBinding()]
    param ( [string]$ComputerName)
    Write-Output $ComputerName
}

Test-FGBParameterValidation -ComputerName DC01,DC02

function Test-FGBParameterValidation2 {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$ComputerName
    )
    Write-Output $ComputerName
}

Test-FGBParameterValidation2

function Test-FGBParameterValidation3 {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string[]]$ComputerName
    )
    Write-Output $ComputerName
}

Test-FGBParameterValidation3 DC01,DC02

function Test-FGBParameterValidation4 {
    [CmdletBinding()]
    param(
        [ValidateNotNullOrEmpty()]
        [string[]]$ComputerName = $env:COMPUTERNAME
    )
    Write-Output $ComputerName
}

Test-FGBParameterValidation4

# Verbose Outputs
function Test-FGBVerboseOutput {
    [CmdletBinding()]
    param (
        [ValidateNotNullOrEmpty()]
        [string[]]$ComputerName = $env:COMPUTERNAME
    )

    foreach ($Computer in $ComputerName) {
        #Attempting to perform some action on $Computer <<-- Don't use
        #inline comments like this, use write verbose instead.
        Write-Output $Computer
    }
}

Test-FGBVerboseOutput DC01

function Test-FGBVerboseOutput2 {
    [CmdletBinding()]
    param (
        [ValidateNotNullOrEmpty()]
        [string[]]$ComputerName = $env:COMPUTERNAME
    )

    foreach ($Computer in $ComputerName) {
        Write-Verbose -Message "Attempting to perform some action on $Computer"
        Write-Output $Computer
    }
}

Test-FGBVerboseOutput2 -ComputerName DC01,DC02
Test-FGBVerboseOutput2 -ComputerName DC01,DC02 -Verbose

# Pipeline Input
function Test-FGBPipelineInput {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory,
                    ValueFromPipeline)]
        [string[]]$ComputerName
    )
    PROCESS {
        Write-Output $ComputerName
    }
}

'DC01', 'DC02' | Test-FGBPipelineInput

function Test-FGBPipelineInput2 {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory,
                    ValueFromPipelineByPropertyName)]
        [string[]]$ComputerName
    )
    PROCESS {
        Write-Output $ComputerName
    }
}

# Error Handling
function Test-FGBErrorHandling {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory,
                    ValueFromPipeline,
                    ValueFromPipelineByPropertyName)]
        [string[]]$ComputerName
    )
    PROCESS {
        foreach ($Computer in $ComputerName) {
            Test-WSMan -ComputerName $Computer
        }
    }

}

Test-FGBErrorHandling -ComputerName DC01

function Test-FGBErrorHandling2 {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory,
                    ValueFromPipeline,
                    ValueFromPipelineByPropertyName)]
        [string[]]$ComputerName
    )
    PROCESS {
        foreach ($Computer in $ComputerName){
            try {
                Test-WSMan -ComputerName $Computer
            }
            catch {
                Write-Warning -Message "Unable to connect to Computer $Computer"
            }
        }
    }
}

Test-FGBErrorHandling2 DC02

function Test-FGBErrorHandling3 {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory,
                    ValueFromPipeline,
                    ValueFromPipelineByPropertyName)]
        [string[]]$ComputerName
    )
    PROCESS {
        foreach ($Computer in $ComputerName){
            try {
                Test-WSMan -ComputerName $Computer -ErrorAction Stop
            }
            catch {
                Write-Warning -Message "Unable to connect to Computer $Computer"
            }
        }
    }
}

Test-FGBErrorHandling3 DC02

# Comment-Based Help

function Get-FGBAutoStoppedService {
    <#
    .SYNOPSIS
        Returns a list of services that are set to start automatically, are not
        currently running, excluding the services that are set to delayed start.

    .DESCRIPTION
        Get-FGBAutoStoppedService is a function that returns a list of services from
        the specified remote computer(s) that are set to start automatically, are not
        currently running, and it excludes the services that are set to start automatically
        with a delayed startup.

    .PARAMETER ComputerName
        The remote computer(s) to check the status of the services on.
    
    .PARAMETER Credential
        Specifies a user account that has permission to perform this action. The default
        is the current user.
    
    .EXAMPLE
        Get-FGBAutoStoppedService -ComputerName 'Server1', 'Server2'

    .EXAMPLE
        'Server1', 'Server2' | Get-FGBAutoStoppedService
    
    .EXAMPLE
     Get-FGBAutoStoppedService -ComputerName 'Server1' -Credential (Get-Credential)

    .INPUTS
        String
    
    .OUTPUTS
        PSCustomObject
    
    .NOTES
        Author: Fagner Braga
    #>
    [CmdletBinding()]
    param (
    )
}

Get-Help Get-FGBAutoStoppedService -Full
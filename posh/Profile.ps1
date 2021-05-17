if (!(Test-Path -Path $PROFILE)) {
  New-Item -ItemType File -Path $PROFILE -Force
}

# custom prompt from: https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_profiles?view=powershell-8.1
function Prompt
{
$env:COMPUTERNAME + " " + (Get-Location) + "> "
}

# open profile easily
function Pro {code $PROFILE}

# run aws cli in docker container
function awscli
{
  docker run --rm -it -v $env:userprofile\.aws:/root/.aws  amazon/aws-cli $args
}
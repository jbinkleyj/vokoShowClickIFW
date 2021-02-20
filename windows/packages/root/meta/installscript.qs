

var iconName = "vokoShowClick";
var progName = "vokoShowClick";

function Component()
{
}

Component.prototype.createOperations = function()
{
  if ( systemInfo.kernelType === "winnt" )
  {
    component.createOperations();

    component.addOperation( "InstallIcons", "@TargetDir@/icons" );

    component.addOperation( "CreateShortcut","@TargetDir@/vokoShowClick.exe","@StartMenuDir@/vokoShowClick-@Version@.lnk", "iconPath=@TargetDir@/vokoShowClick.ico" );
    component.addOperation( "CreateShortcut","@TargetDir@/vokoShowClick.exe","@DesktopDir@/vokoShowClick-@Version@.lnk", "iconPath=@TargetDir@/vokoShowClick.ico" );
  }
}

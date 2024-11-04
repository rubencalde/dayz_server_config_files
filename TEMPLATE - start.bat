@echo off
:start
::Server name (This is just for the bat file)
set serverName=Cheyetac_x408 Bitterroot Test Server
::Server files location
set serverLocation="D:\SteamLibrary\steamapps\common\DayZServerBITTERROOT"
::Server Port
set serverPort=2302
::Server config
set serverConfig=serverDZ.cfg
::Logical CPU cores to use (Equal or less than available)
set serverCPU=2
::Sets title for terminal (DONT edit)
title %serverName% batch
::DayZServer location (DONT edit)
cd "%serverLocation%"
echo (%time%) %serverName% started.
::Launch parameters (edit end: -config=|-port=|-profiles=|-doLogs|-adminLog|-netLog|-freezeCheck|-filePatching|-BEpath=|-cpuCount=)
::start "DayZ Server" /min "DayZServer_x64.exe" -config=%serverConfig% -port=%serverPort% "-profiles=config" -cpuCount=%serverCPU% "-mod=@Bitterroot;@SchanaModCompass;@CF;@VPPAdminTools;@RaG_Vehicle_Pack;@Unlimited Stamina;@Autorun Mod;@RedFalcon Flight System Heliz;@SNAFU Weapons;@FlipTransport;@COCAs_NoVehicleDamageMOD;@Paragon Gear and Armor;@Paragon Arsenal;@MuchStuffPack;@TraderPlus;@VanillaPlusPlusMap;@MiniMap;@BuilderItems;@Dabs Framework;@GRW ER7 Gauss Rifle" -dologs -adminlog -netlog -freezecheck 
::Time in seconds before kill server process (14400 = 4 hours)
timeout 14390
taskkill /im DayZServer_x64.exe /F
::Time in seconds to wait before..
timeout 10
::Go back to the top and repeat the whole cycle again
goto start

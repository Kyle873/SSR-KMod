
SSR-KMod
===
A Cheat/QoL/utility mod for the System Shock Remake.

Note that this is a "sandbox" mod of sorts, where I'm learning how UE4 modding works. I make no promises that everything works at any given time, and some stuff is obviously meant to totally break the game. Just don't use it. I'll try wrapping things in customizable variables that are easy to edit when I can.

Installation
===
1. Download and install [UE4SS](https://github.com/UE4SS-RE/RE-UE4SS). You will specifically want the 2.x version.
2. Clone this repo or extract a downloaded zip file into the Mods folder of the game's binary directory.
3. Add the mod to the mods.txt in the Mods directory like so to enable it, using the same name as the mod folder itself:
```
SSR-KMod : 1
```
4. Once you are in-game, press Ctrl+R to refresh the mod and get it to acquire the object instances it needs to function.

Hotkeys
===
* Delete - Refills Vitals

Console Commands
===
The following functions have been wrapped into console commands.

```
SetHealth (value)
SetHealthMax (value)
SetEnergy (value)
SetEnergyMax (value)
SetItemSlotCount (slot) (count)
RevealMap
RefillVitals
SetDetectable (on/oaff)
SetGodMode (on/off)
TeleportToTerminalByIndex (index)
TeleportToElevatorByIndex (index)
TeleportToLocation (x) (y) (z)
DestroyComputerNodes
KillEnemies
KillCameras
```

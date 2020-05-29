### Obligatory Warning
I am super new to bash and Arch (like 2 weeks new) so this code is probably horrible. Also sorry about the comments.

----
## Introduction
I really like using the terminal for everything (hence my move to Arch), but I was having a hard time remembering all the commands to do little things like connect to wifi and such. 
Also I am running on a MS Surface Pro 4 so it can be wonky at times. 
In comes @commands! 

Unfortunately, there is no nice package for this since I just started developing it like 10 days ago, but some of it is working and I already love it. 

## Commands
  - `@commands` - This lists all the commands that are built
    - `add` - This adds a command to the list
    - `edit` - This just opens the command for editing
    - `delete` - This deletes the commands and updates the aliases
  - `@wifi` - This shows the status of the wifi
    - `connect` - This will force the laptop to connect to wifi
    - `disconnect` - This turns the wifi interface off
  - `@dock` - This sets the layout of the screens to how my external monitors are setup
  - `@undock` - Pretty much the same, but also messes with scaling since the Surface has HiDP
  - `@devmode` - Opens and moves windows around into work layout
  - `@stream` - Same as devmode, but for gaming/streaming

All commands have a `help` flag which will dynamically get the command's oiptions and print them to screen. 
  
More will be coming, but this is it for now. As I use Arch more and more I will probably find the need to add more of them. 

## Examples
```
webtron @ 03:34:12 in ~/scripts/commands
   :> @commands
---------------
COMMANDS  
---------------
commands
dock
undock
wifi

webtron @ 03:34:14 in ~/scripts/commands
   :> @wifi help

~~ @Wifi Help Menu ~~
----------------------------------
HELP -> Displays this help menu for this command
BLANK -> Displays the current status of the wifi menu
CONNECT -> Forces the wireless NIC to reconnect

webtron @ 03:35:18 in ~/scripts/commands
   :> @wifi connect
Successfully initialized wpa_supplicant
Connecting to SSID...
Connected @ IP: 10.0.0.33

```
## Screenshots
Coming soon, but it's just command line stuff so ya...

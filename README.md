# HASS-hammerspoon
[hammerspoon](http://www.hammerspoon.org/) init.lua script to toggle a Home-assistant switch when my MacBook wakes/sleeps.
Makes use of [hs.http.post](http://www.hammerspoon.org/docs/hs.http.html#post).
Just **brew install hammerspoon**, navigate to **~/.hammerspoon** and add init.lua.
If you don't use a password on your HASS instance, just delete **headers** from init.lua.

In my home-assistant I use a dummy command_line switch to represent the Mac, and in my config I simply have:
```
switch:
  - platform: command_line
    switches:
      macbook_power:
        command_on: ""
        command_off: ""
```

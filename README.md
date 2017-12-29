# HASS-hammerspoon
[hammerspoon](http://www.hammerspoon.org/) init.lua script to toggle a Home-assistant switch when my MacBook wakes/sleeps.

In my home-assistant config I simply have:
```
switch:
  - platform: command_line
    switches:
      macbook_power:
        command_on: ""
        command_off: ""
```

data = '{"entity_id": "switch.macbook_power"}'

headers = {}
headers["x-ha-access"] = "your_password"


local sleepWatcher = hs.caffeinate.watcher.new(function (eventType)
      if (eventType == hs.caffeinate.watcher.systemDidWake) then
          hs.notify.show("Wake sequence initiated!", "", "")
     		  hs.http.post("http://192.168.0.100:8123/api/services/switch/turn_on", data, headers)
      elseif (eventType == hs.caffeinate.watcher.systemWillSleep) then
            hs.notify.show("Bye!", "", "")
     		    hs.http.post("http://192.168.0.100:8123/api/services/switch/turn_off", data, headers)
      end
end)
sleepWatcher:start()

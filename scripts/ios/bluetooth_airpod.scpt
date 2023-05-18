use framework "IOBluetooth"
use scripting additions

set AirPodsName to "adrien’s AirPods Pro"

on getFirstMatchingDevice(deviceName)
	repeat with device in (current application's IOBluetoothDevice's pairedDevices() as list)
		if (device's nameOrAddress as string) contains deviceName then return device
	end repeat
end getFirstMatchingDevice

on toggleDevice(device)
	set quotedDeviceName to quoted form of (device's nameOrAddress as string)
	
	if not (device's isConnected as boolean) then
		device's openConnection()
	end if
	
	do shell script "/usr/local/bin/SwitchAudioSource -s " & quotedDeviceName
	return "Connecting " & (device's nameOrAddress as string)
end toggleDevice

return toggleDevice(getFirstMatchingDevice(AirPodsName))

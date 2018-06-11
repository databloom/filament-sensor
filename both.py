from evdev import InputDevice

from select import select

devices = map(InputDevice, ('/dev/input/event14', '/dev/input/event15'))
#devices = map(InputDevice, ('/dev/input/event14')
devices = {dev.fd: dev for dev in devices}
for dev in devices.values(): print(dev)
while True:
	r, w, x = select(devices, [], [])
	for fd in r:
		for event in devices[fd].read():
			print(devices[fd], event)

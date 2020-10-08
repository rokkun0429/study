require 'wiringpi'

io = WiringPi::GPIO.new
pin = 21
io.mode(pin, OUTPUT)

	io.write(pin, 1)
	sleep (1) 
	io.write(pin, 0)
sleep (1)

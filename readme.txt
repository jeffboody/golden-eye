Golden Eye Readme

[About]

	Golden Eye consists of a custom PCB and Arduino code for a passive IR
	motion sensor which can trigger a Canon DSLR camera to take a picture.

	Send questions or comments to Jeff Boody at jeffboody@gmail.com

[References]

	http://www.pixiq.com/article/camera-laser-trigger
	http://www.doc-diy.net/photo/eos_wired_remote/

[Notes regarding transistors]

	NPN - 2N3904

[Notes regarding Andrea's Camera Cable]

	focus   = green
	shutter = purple
	ground  = blue

[Installing Arduino Dev Kit]

	# some Linux distributions install brltty which cause
	# problems with Arduino
	# http://www.ladyada.net/learn/arduino/lesson0-lin.html
	sudo apt-get remove brltty

	# http://www.arduino.cc/en/Main/Software
	# http://www.arduino.cc/playground/Learning/Linux
	# java should be sun-java6-jre
	# http://shuffleos.com/5042/install-sun-java-6-packages-ubuntu-ppa/

	java -version
	sudo apt-get install gcc-avr
	sudo apt-get install avr-libc
	cd $ARDUINO
	tar -xzf arduino-1.0-linux64.tgz

[License]

	Copyright (c) 2012 Jeff Boody

	Permission is hereby granted, free of charge, to any person obtaining a
	copy of this software and associated documentation files (the "Software"),
	to deal in the Software without restriction, including without limitation
	the rights to use, copy, modify, merge, publish, distribute, sublicense,
	and/or sell copies of the Software, and to permit persons to whom the
	Software is furnished to do so, subject to the following conditions:

	The above copyright notice and this permission notice shall be included
	in all copies or substantial portions of the Software.

	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
	IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
	FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
	AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
	LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
	OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
	THE SOFTWARE.

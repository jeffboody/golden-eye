/*
* Copyright (c) 2012 Jeff Boody
*
* Permission is hereby granted, free of charge, to any person obtaining a
* copy of this software and associated documentation files (the "Software"),
* to deal in the Software without restriction, including without limitation
* the rights to use, copy, modify, merge, publish, distribute, sublicense,
* and/or sell copies of the Software, and to permit persons to whom the
* Software is furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included
* in all copies or substantial portions of the Software.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
* THE SOFTWARE.
*/

// motion, led and potentiometer
int motion;
int shutter;
int focus;

// arduino pins
int PIN_MOTION  = 4;
int PIN_SHUTTER = 3;
int PIN_FOCUS   = 2;
int PIN_LIGHT   = A0;

void setup()
{
  pinMode(PIN_MOTION, INPUT);
  pinMode(PIN_SHUTTER, OUTPUT);
  pinMode(PIN_FOCUS, OUTPUT);
  digitalWrite(PIN_SHUTTER, LOW);
  digitalWrite(PIN_FOCUS, LOW);
  //Serial.begin(115200);   // 115200 is the default for Android
}

void loop()
{
  // read motion
  motion = digitalRead(PIN_MOTION);
  //Serial.println(motion);

  if(motion == HIGH)
  {
    //Serial.println(444);
    digitalWrite(PIN_FOCUS, HIGH);
    delay(500);
    digitalWrite(PIN_SHUTTER, HIGH);
    delay(10);
    digitalWrite(PIN_FOCUS, LOW);
    digitalWrite(PIN_SHUTTER, LOW);
    delay(1000);
  }

  // add a 50 ms delay before next loop iteration
  delay(50);
}

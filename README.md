# KoboWeather

In the morning when choosing clothes for my kid, I easily get anoyed by
clicking through various weather apps, accepting cookies, finding out when it
will rain, etc.
The [e-paper project](http://mrks.de/blog/Endlich_E-Paper/35) [german] of a
friend gave me the template to ease my mornings.

This project provides a weather forecase application for the Kobo Mini. It's
still much work in progress. This is how it will look like, when it's ready:

![Vision](https://raw.githubusercontent.com/5nord/KoboWeather/master/KoboWeather.png)


# Installing

This Go application requires a cross compiler for ARM and a libc which is
compatible with the libc version used on the Kobo Mini. An older version should
be okay, but newer versions not.


**Cross Compiler**

Probably any will do. I choose below package (from Fedora 32):

	sudo dnf install gcc-c++-arm-linux-gnu gcc-arm-linux-gnu binutils-arm-linux-gnu



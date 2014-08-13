About
=====

Crash log files generated by iOS's ReportCrash daemon do not contain symbol names, making them difficult to interpret.
Symbolication is the act of looking up symbol names and adding them to these files.

This project provides a library for parsing and symbolicating (via libsymbolicate) crash logs, both on and off device.

Credit
=====

This was originally based off of code used in [CrashReporter](http://code.google.com/p/networkpx/wiki/Using_CrashReporter), an iOS app by [kennytm](https://github.com/kennytm).

This project also makes use of the following:
* [libsymbolicate](http://github.com/ashikase/libsymbolicate)
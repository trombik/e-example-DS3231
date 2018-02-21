# Example project of DS3232-based RTC module

[![Build Status](https://travis-ci.org/trombik/e-example-DS3231.svg?branch=master)](https://travis-ci.org/trombik/e-example-DS3231)

This project builds [one of
example](https://github.com/JChristensen/DS3232RTC/blob/master/examples/alarm_ex1/alarm_ex1.ino)
from [JChristensen/DS3232RTC](https://github.com/JChristensen/DS3232RTC) for
testing, with a bit of tweaks, using platform.io.

## Supported boards

* Arduino nano

## Usage

See [schematics](output.svg).

Build the source.

```
pio run
```

Upload.

```
pio run -t upload
```
## References

* [Adafruit DS3231 Precision RTC Breakout](https://learn.adafruit.com/adafruit-ds3231-precision-rtc-breakout)

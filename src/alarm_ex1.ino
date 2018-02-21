/*-----------------------------------------------------------------------------*
 * DS3231/DS3232 Alarm Example #1                                              *
 *                                                                             *
 * Set Alarm 1 to occur once a minute at 5 seconds after the minute.           *
 * Detect the alarm by polling the RTC alarm flag.                             *
 *                                                                             *
 * Hardware:                                                                   *
 * Arduino Uno, DS3231 RTC.                                                    *
 * Connect RTC SDA to Arduino pin A4.                                          *
 * Connect RTC SCL to Arduino pin A5.                                          *
 *                                                                             *
 * Jack Christensen 16Sep2017                                                  *
 *-----------------------------------------------------------------------------*/

#include <DS3232RTC.h>      // http://github.com/JChristensen/DS3232RTC
#include <Streaming.h>      // http://arduiniana.org/libraries/streaming/

const char *
iso_8601(const time_t t)
{
    static char buf[20];
    // 2007-04-05T14:30:01
    int ret = snprintf(buf, sizeof(buf), "%4d-%02d-%02dT%02d:%02d:%02d",
        year(t),
        month(t),
        day(t),
        hour(t),
        minute(t),
        second(t)
    );
    if (ret == -1 || ret >= (int)sizeof(buf))
        return NULL;

    return buf;
}

void
log(const char * msg)
{
    Serial << iso_8601(RTC.get()) << " " << msg << endl;
}

// function to return the compile date and time as a time_t value
time_t compileTime()
{
    const time_t FUDGE(10);    //fudge factor to allow for upload time, etc. (seconds, YMMV)
    char const *compDate = __DATE__;
    char const *compTime = __TIME__;
    char const *months = "JanFebMarAprMayJunJulAugSepOctNovDec";
    char compMon[4], *m;

    strlcpy(compMon, compDate, 3);
    m = strstr(months, compMon);

    tmElements_t tm;
    tm.Month = ((m - months) / 3 + 1);
    tm.Day = atoi(compDate + 4);
    tm.Year = atoi(compDate + 7) - 1970;
    tm.Hour = atoi(compTime);
    tm.Minute = atoi(compTime + 3);
    tm.Second = atoi(compTime + 6);

    time_t t = makeTime(tm);
    return t + FUDGE;        //add fudge factor to allow for compile time
}

void
setup()
{
    Serial.begin(115200);
    delay(1000);
    Serial << __FILE__ << endl;
    // initialize the alarms to known values, clear the alarm flags, clear the alarm interrupt flags
    RTC.setAlarm(ALM1_MATCH_DATE, 0, 0, 0, 1);
    RTC.setAlarm(ALM2_MATCH_DATE, 0, 0, 0, 1);
    RTC.alarm(ALARM_1);
    RTC.alarm(ALARM_2);
    RTC.alarmInterrupt(ALARM_1, false);
    RTC.alarmInterrupt(ALARM_2, false);
    RTC.squareWave(SQWAVE_NONE);

    Serial << "Resetting OSC to the compile time" << endl;
    RTC.set(compileTime());

    // set Alarm 1 to occur at 5 seconds after every minute
    RTC.setAlarm(ALM1_MATCH_SECONDS, 5, 0, 0, 1);
    // clear the alarm flag
    RTC.alarm(ALARM_1);
    log("Start");
}

void
loop()
{
    if ( RTC.alarm(ALARM_1) )    // check alarm flag, clear it if set
        log("ALARM_1");
    delay(100);                  // no need to bombard the RTC continuously
}

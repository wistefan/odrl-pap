package odrl.leftOperand

import rego.v1

## odrl:currentTime
# returns the current time in ms
current_time := time.now_ns() / 1000000

## odrl:dayOfWeek
# Day of week from timestamp (0=Mon, 6=Sun)
day_of_week(ts) = weekday if {
  days := floor(ts / 1000 / 86400)
  weekday := (days + 4) % 7
}

## odrl:hourOfDay
# Hour of day (UTC) from timestamp (0–23)
hour_of_day(ts) = hour if {
  seconds := floor(ts / 1000)
  seconds_in_day := seconds % 86400
  hour := floor(seconds_in_day / 3600)
}

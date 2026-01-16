package odrl.leftOperand

import rego.v1

## odrl:currentTime
# returns the current time in ms
current_time := time.now_ns() / 1000000

## odrl:dayOfWeek
# Day of week from timestamp (0=Mon, 6=Sun)
day_of_week(ts) := weekday_name if {
	ts_ns := ts * 1e6
	weekday := time.weekday(ts_ns)
	weekday_value := {
		"Monday": 0,
		"Tuesday": 1,
		"Wednesday": 2,
		"Thursday": 3,
		"Friday": 4,
		"Saturday": 5,
		"Sunday": 6,
	}
	weekday_name := weekday_value[weekday]
}

## odrl:hourOfDay
# Hour of day (UTC) from timestamp (0–23)
hour_of_day(ts) := hour if {
	# Convert ms to ns
	ts_ns := ts * 1e6
	[hour, _, _] := time.clock(ts_ns)
}

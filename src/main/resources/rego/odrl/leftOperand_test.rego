package odrl.leftOperand_test

import data.odrl.leftOperand

# -----------------------
# Tests for day_of_week
# -----------------------
test_day_of_week_monday if {
	ts := 1768219200000 # Jan 12, 2026 12:00:00
	leftOperand.day_of_week(ts) == 0 # Monday
}

# Example: 2026-01-18T00:00:00Z
test_day_of_week_sunday if {
	ts := 1768737600000 # Jan 18, 2026 00:00:00
	leftOperand.day_of_week(ts) == 6 # Sunday
}

# -----------------------
# Tests for hour_of_day
# -----------------------
# Example: 2026-01-16T05:30:00Z
test_hour_of_day_morning if {
	ts := 1768712400000 # Jan 18, 2026 0:00:00
	leftOperand.hour_of_day(ts) == 5
}

# Example: 2026-01-16T23:59:59Z
test_hour_of_day_late if {
	ts := 1768777200000 # Jan 18, 2026 23:00:00
	leftOperand.hour_of_day(ts) == 23
}

# Example: Midnight
test_hour_of_day_midnight if {
	ts := 1768694400000 # Jan 18, 2026 00:00:00
	leftOperand.hour_of_day(ts) == 0
}

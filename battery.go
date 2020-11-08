package main

/*
 *   3) AC line status
 *	0x00: Off-line
 *	0x01: On-line
 *	0x02: On backup power (BIOS >= 1.1 only)
 *	0xff: Unknown

 *   4) Battery status
 *	0x00: High
 *	0x01: Low
 *	0x02: Critical
 *	0x03: Charging
 *	0x04: Selected battery not present (BIOS >= 1.2 only)
 *	0xff: Unknown

 *   5) Battery flag
 *	bit 0: High
 *	bit 1: Low
 *	bit 2: Critical
 *	bit 3: Charging
 *	bit 7: No system battery
 *	0xff: Unknown
 *   6) Remaining battery life (percentage of charge):
 *	0-100: valid
 *	-1: Unknown
 *   7) Remaining battery life (time units):
 *	Number of remaining minutes or seconds
 *	-1: Unknown
 *   8) min = minutes; sec = seconds




t@(none) ~]# cat /proc/apm
1.13 1.2 0x02 0x01 0x03 0x03 84% -4559 min

[root@(none) ~]# cat /proc/apm
1.13 1.2 0x02 0x00 0x00 0x00 84% 3959 min
*/

const (
	Unknown = iota
)

type Battery struct {
	apm string
}

---
url: https://help.hh-dm.com/reference/time-zones/
---

On this pageTime Zones

This section describes the time zone handling in HH Data Management.

HH Data Management uses the IANA Time Zone Database (also known as the tz database or zoneinfo database) for all time zone operations. This is the same database used by most operating systems and programming languages, ensuring consistent time zone handling across platforms.

For a complete list of available time zones and their identifiers, please refer to the IANA Time Zone Database list.

Common Time Zone Identifiersâ

Here are some commonly used time zone identifiers:

UTC - Coordinated Universal Time

America/New_York - Eastern Time (ET)

America/Chicago - Central Time (CT)

America/Denver - Mountain Time (MT)

America/Los_Angeles - Pacific Time (PT)

Europe/London - British Time (GMT/BST)

Europe/Paris - Central European Time (CET/CEST)

Asia/Tokyo - Japan Standard Time (JST)

Australia/Sydney - Australian Eastern Time (AET)

dangerWhen specifying time zones in HH Data Management, always use the full IANA time zone identifier (e.g., America/New_York). Only abbreviations that directly match a valid time zone identifier (like UTC or GMT) are supported. This ensures accurate handling of daylight saving time and historical time zone changes.

noteThe IANA Time Zone Database is regularly updated to reflect changes in time zone rules worldwide. HH Data Management automatically uses the latest time zone data available in your operating system.

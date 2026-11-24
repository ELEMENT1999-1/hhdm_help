---
url: https://help.hh-dm.com/extensibility/api/release-notes/
---

On this pageRelease Notes

2026-09-07â

Featuresâ

add new DataFileAccess endpoints to access data files directly through the API

2026-07-15â

Featuresâ

add new Canopy endpoints to allow triggering Canopy simulations and results processing through the API

add endpoint to get SessionData using the session ID

improvements to definitions controller; all parameter types can now be added/updated/deleted with similar functionality to desktop software

Bug fixesâ

GetCurrentUserProperty() can return incorrect value when evaluated on the API

2026-05-03â

Featuresâ

add more robust validation when setting entity relationships via API (e.g. when assigning a setup to a run)

add endpoints to be able to associate lap markers to track configuration, event car data and session car data

Bug fixesâ

definitions controller does not return empty collections even when * is specified as parametersToInclude

API returns 200 and an empty list in some cases when users try to access objects to which they don't have access

# Blank-file test · /health · 2026-11-07

- Time: about 6 minutes (finished with 14:11 left of 20)
- Allowed: Express docs only

## Bug
- Wrote `res.JSON` instead of `res.json`
- Server started fine, but `curl -i` returned 500 Internal Server Error
- The error in the body said: TypeError: res.JSON is not a function at index.js:6:6
- Cause: JavaScript names are case-sensitive. Express's function is `res.json`
- Fix: lowercase it, restart, curl again: 200 OK, application/json

## git diff vs the original
- Only spacing and the listen message changed. Same logic

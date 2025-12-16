# CI Notes

## Why we do not use `.github/pkg.lock` right now

We removed the pak lockfile because it caused GitHub Actions failures on macOS (Apple Silicon).
pak attempted to download pinned binaries (for example, xfun) and the download failed, which stopped CI
before `R CMD check` could run.

For the current stage of battplot, we prioritise stable CI over pinned dependency installs.

## When to reintroduce a lockfile

Reintroduce a lockfile when:
- the dependency set is stable,
- CI is consistently green across OS targets,
- we want reproducible builds for releases.

If we reintroduce it, we also add a scheduled workflow to refresh the lockfile monthly
and test it on macOS, Windows, and Linux.

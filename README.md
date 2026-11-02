# sayyidsyamil Homebrew tap

Casks for small, single-purpose macOS menu-bar utilities.

## Install

```bash
brew install --cask sayyidsyamil/tap/port-pocket
brew install --cask sayyidsyamil/tap/awake-lock
```

Tap once and the short names work afterwards:

```bash
brew tap sayyidsyamil/tap
brew install --cask port-pocket
```

## What's here

| Cask | App |
| --- | --- |
| `port-pocket` | Lists local TCP listeners with process and project detail, and stops them. |
| `awake-lock` | Keeps the Mac awake for a timed session. |

Both apps are MIT licensed. Homebrew downloads with `curl`, which does not set the
quarantine attribute, so these launch without a Gatekeeper prompt even though the
preview builds are not yet notarized.

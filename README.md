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

Both apps are MIT licensed. The casks clear the quarantine flag after installing, so they
launch without a Gatekeeper prompt even though the preview builds are not notarized.

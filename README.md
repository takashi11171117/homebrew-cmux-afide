# homebrew-cmux-afide

Homebrew tap for **cmux AFIDE** — an agent-first IDE fork of [cmux](https://github.com/manaflow-ai/cmux).

```bash
brew tap takashi11171117/cmux-afide
brew install --cask cmux-afide
```

Installs alongside upstream cmux rather than replacing it: the two use different bundle
identifiers, so settings, workspaces, and sessions are kept separate and each updates from
its own Sparkle feed.

The cask is written by `scripts/fork/release-afide.sh` in the app repository; edit it there,
not here.

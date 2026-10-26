# PiGit for Homebrew

[PiGit](https://pigit.dev) is the agentic development environment built on Git: Claude Code, Codex and your team, around a full Git client, in one native app.

```sh
# macOS on Apple silicon
brew install --cask mambisi/pigit/pigit

# Linux on x86_64
brew install mambisi/pigit/pigit
```

`brew upgrade` installs the next build. Both install the build that [pigit.dev](https://pigit.dev) serves, checked against its published SHA-256. Without Homebrew:

```sh
curl -fsSL https://pigit.dev/install.sh | sh
```

PiGit is in early access: each early access build is free to use and stops opening 60 days after it was made, under the terms its licence file holds. The macOS app is signed ad hoc and not notarized, so macOS asks before its first launch; open it from the Finder's menu with Open, or allow it in System Settings, Privacy & Security.

The formula and cask are written by `tools/homebrew.py` in PiGit's repository for each release.

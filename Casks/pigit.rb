# Written by tools/homebrew.py in PiGit's repository for each release.
cask "pigit" do
  version "0.1.0-eap.3"
  sha256 "e3ddde1a9d2b8a3e4ed0deeb737b7d1b807782e29b67eabd13671f72b597da1b"

  url "https://pigit.dev/download/v#{version}/PiGit-#{version}-macos-arm64.dmg"
  name "PiGit"
  desc "Agentic development environment built on Git"
  homepage "https://pigit.dev/"

  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "PiGit.app"
  binary "#{appdir}/PiGit.app/Contents/MacOS/pigit"

  caveats <<~EOS
    PiGit 0.1.0-eap.3 is signed ad hoc and not notarized, so macOS asks before its first
    launch: open it from the Finder's menu with Open, or allow it in System Settings,
    Privacy & Security. It stops opening on 2026-12-28; `brew upgrade --cask pigit` installs the next one.
  EOS
end

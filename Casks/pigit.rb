# Written by tools/homebrew.py in PiGit's repository for each release.
cask "pigit" do
  version "0.1.0-eap.2"
  sha256 "2b9298b7703049ab0d71c984f2bd4cde5366457f5bd040fc6f2cae80dfb1d5b6"

  url "https://pigit.dev/download/v#{version}/PiGit-#{version}-macos-arm64.dmg"
  name "PiGit"
  desc "Agentic development environment built on Git"
  homepage "https://pigit.dev/"

  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "PiGit.app"
  binary "#{appdir}/PiGit.app/Contents/MacOS/pigit"

  caveats <<~EOS
    PiGit 0.1.0-eap.2 is signed ad hoc and not notarized, so macOS asks before its first
    launch: open it from the Finder's menu with Open, or allow it in System Settings,
    Privacy & Security. It stops opening on 2026-12-25; `brew upgrade --cask pigit` installs the next one.
  EOS
end

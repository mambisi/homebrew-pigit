# Written by tools/homebrew.py in PiGit's repository for each release.
cask "pigit" do
  version "0.1.0-eap.4"
  sha256 "e6e5c33a794d6523b575e1455877956dda93b804ef8a69aa2735b9dd0a3b1292"

  url "https://pigit.dev/download/v#{version}/PiGit-#{version}-macos-arm64.dmg"
  name "PiGit"
  desc "Agentic development environment built on Git"
  homepage "https://pigit.dev/"

  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "PiGit.app"
  binary "#{appdir}/PiGit.app/Contents/MacOS/pigit"

  caveats <<~EOS
    PiGit 0.1.0-eap.4 is an early access build. It stops opening on 2026-12-31;
    `brew upgrade --cask pigit` installs the next one.
  EOS
end

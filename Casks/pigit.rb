# Written by tools/homebrew.py in PiGit's repository for each release.
cask "pigit" do
  version "0.1.0-eap.6"
  sha256 "bd49841715d093d058850d71dce9b07803435f0c87cfd8813871834aa08adb48"

  url "https://pigit.dev/download/v#{version}/PiGit-#{version}-macos-arm64.dmg"
  name "PiGit"
  desc "Agentic development environment built on Git"
  homepage "https://pigit.dev/"

  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "PiGit.app"
  binary "#{appdir}/PiGit.app/Contents/MacOS/pigit"

  caveats <<~EOS
    PiGit 0.1.0-eap.6 is an early access build. It stops opening on 2027-01-08;
    `brew upgrade --cask pigit` installs the next one.
  EOS
end

# Written by tools/homebrew.py in PiGit's repository for each release.
class Pigit < Formula
  desc "Agentic development environment built on Git"
  homepage "https://pigit.dev/"
  version "0.1.0-eap.3"
  license :cannot_represent

  on_linux do
    on_intel do
      url "https://pigit.dev/download/v0.1.0-eap.3/pigit-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "5850e30c89dc2b1984d22e06a103d73e9dea64a8ad941a2ce6d5c24d4a4fd419"
    end
  end

  def install
    bin.install "pigit"
    (share/"applications").install "pigit.desktop" if File.exist?("pigit.desktop")
    [16, 32, 48, 64, 128, 256, 512].each do |size|
      icon = "pigit-#{size}.png"
      next unless File.exist?(icon)

      (share/"icons/hicolor/#{size}x#{size}/apps").install icon => "pigit.png"
    end
  end

  def caveats
    <<~EOS
      PiGit 0.1.0-eap.3 is an early access build. It stops opening on 2026-12-28;
      `brew upgrade pigit` installs the next one.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pigit --version")
  end
end

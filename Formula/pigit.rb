# Written by tools/homebrew.py in PiGit's repository for each release.
class Pigit < Formula
  desc "Agentic development environment built on Git"
  homepage "https://pigit.dev/"
  version "0.1.0-eap.2"
  license :cannot_represent

  on_linux do
    on_intel do
      url "https://pigit.dev/download/v0.1.0-eap.2/pigit-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "da9e3847e760e263dbbe0ffd61e5bb1c597cea829776de8c3ad4e8fe790a8145"
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
      PiGit 0.1.0-eap.2 is an early access build. It stops opening on 2026-12-25;
      `brew upgrade pigit` installs the next one.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pigit --version")
  end
end

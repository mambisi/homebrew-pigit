# Written by tools/homebrew.py in PiGit's repository for each release.
class Pigit < Formula
  desc "Agentic development environment built on Git"
  homepage "https://pigit.dev/"
  version "0.1.0-eap.6"
  license :cannot_represent

  on_linux do
    on_intel do
      url "https://pigit.dev/download/v0.1.0-eap.6/pigit-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "d0cc63f2ba6839132f8d2ca4f321cc6c183a560e0cfd205a624c3a28d3a8da4e"
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
      PiGit 0.1.0-eap.6 is an early access build. It stops opening on 2027-01-08;
      `brew upgrade pigit` installs the next one.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pigit --version")
  end
end

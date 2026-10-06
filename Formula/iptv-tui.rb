# WaveCom TV a terminálban (iptv-tui)
class IptvTui < Formula
  desc "WaveCom TV in the terminal: live TV, guide, catch-up (IPTV client)"
  homepage "https://github.com/Wavecom-hu/iptv-tui"
  version "1.0.5"

  on_macos do
    on_arm do
      url "https://github.com/Wavecom-hu/iptv-tui/releases/download/v1.0.5/iptv-tui_darwin_arm64.tar.gz"
      sha256 "143d3771228cb5eea61aee6c580ca0bb1f31f165af5c7d98b3fcb51f02c1c249"
    end
    on_intel do
      url "https://github.com/Wavecom-hu/iptv-tui/releases/download/v1.0.5/iptv-tui_darwin_amd64.tar.gz"
      sha256 "73102649c1c3f00fb7f819255a6238275e3005cb61341f785392b8300d5053de"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Wavecom-hu/iptv-tui/releases/download/v1.0.5/iptv-tui_linux_arm64.tar.gz"
      sha256 "c08ad3131d29f77b92704d44531603c6ad74194638047712d73b8604f5b60048"
    end
    on_intel do
      url "https://github.com/Wavecom-hu/iptv-tui/releases/download/v1.0.5/iptv-tui_linux_amd64.tar.gz"
      sha256 "104682c4d41cfa7bbcd516975c79da840e853e7a2cf506af00dd8a2b2bb3e789"
    end
  end

  depends_on "mpv"

  def install
    bin.install "iptv-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/iptv-tui --version")
  end
end

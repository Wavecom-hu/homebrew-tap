# WaveCom TV a terminálban (iptv-tui)
class IptvTui < Formula
  desc "WaveCom TV in the terminal: live TV, guide, catch-up (IPTV client)"
  homepage "https://github.com/Wavecom-hu/iptv-tui"
  version "1.0.6"

  on_macos do
    on_arm do
      url "https://github.com/Wavecom-hu/iptv-tui/releases/download/v1.0.6/iptv-tui_darwin_arm64.tar.gz"
      sha256 "91285cea7a2d8a723eb651e3a16b5b166f34ac33602ff06696e183238e6c81a9"
    end
    on_intel do
      url "https://github.com/Wavecom-hu/iptv-tui/releases/download/v1.0.6/iptv-tui_darwin_amd64.tar.gz"
      sha256 "930ebb83df68f82343dc988981059d59defce8f06cbe7d574d836dd3c39e4d1a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Wavecom-hu/iptv-tui/releases/download/v1.0.6/iptv-tui_linux_arm64.tar.gz"
      sha256 "8d5b089b432c11e9e540c3e9769508003ee5f09e4ca3b47a44a95dd06df6e9b5"
    end
    on_intel do
      url "https://github.com/Wavecom-hu/iptv-tui/releases/download/v1.0.6/iptv-tui_linux_amd64.tar.gz"
      sha256 "43e13f7a3f7269a258e1787f4662e6cef29f04603fcc250b4d65e447f5c0b0f6"
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

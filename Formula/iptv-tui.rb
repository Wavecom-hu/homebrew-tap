# WaveCom TV a terminálban (iptv-tui)
class IptvTui < Formula
  desc "WaveCom TV in the terminal: live TV, guide, catch-up (IPTV client)"
  homepage "https://github.com/Wavecom-hu/iptv-tui"
  version "1.0.7"

  on_macos do
    on_arm do
      url "https://github.com/Wavecom-hu/iptv-tui/releases/download/v1.0.7/iptv-tui_darwin_arm64.tar.gz"
      sha256 "3ea671e92a722beaa83c7f9b345b4066f7f2661fd98787267d357555927d1799"
    end
    on_intel do
      url "https://github.com/Wavecom-hu/iptv-tui/releases/download/v1.0.7/iptv-tui_darwin_amd64.tar.gz"
      sha256 "8d2b6a8db4c58dc543a66faa054e0871d90ab434e53c721eb3d950b19a3b2137"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Wavecom-hu/iptv-tui/releases/download/v1.0.7/iptv-tui_linux_arm64.tar.gz"
      sha256 "5a13d6c7b13ec420f7bced35056ae7e05f99f282d0f8a9e045493d709b27befa"
    end
    on_intel do
      url "https://github.com/Wavecom-hu/iptv-tui/releases/download/v1.0.7/iptv-tui_linux_amd64.tar.gz"
      sha256 "94386286c948798560270ed8b0ee4af6b7262b599fa59f38d2e0ce36ae640dbe"
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

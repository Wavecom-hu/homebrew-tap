# WaveCom TV a terminálban (iptv-tui)
class IptvTui < Formula
  desc "WaveCom TV in the terminal: live TV, guide, catch-up (IPTV client)"
  homepage "https://github.com/Wavecom-hu/iptv-tui"
  version "1.0.4"

  on_macos do
    on_arm do
      url "https://github.com/Wavecom-hu/iptv-tui/releases/download/v1.0.4/iptv-tui_darwin_arm64.tar.gz"
      sha256 "e64defcaeac42d6a694733623062ec7b85d0df7b1f0d7cdcc4975dc64213b67a"
    end
    on_intel do
      url "https://github.com/Wavecom-hu/iptv-tui/releases/download/v1.0.4/iptv-tui_darwin_amd64.tar.gz"
      sha256 "d0d912050939153698649c3e9531b732ccbd6ab8d68b11c36eb44a54edf71bc7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Wavecom-hu/iptv-tui/releases/download/v1.0.4/iptv-tui_linux_arm64.tar.gz"
      sha256 "7a36b42fe9cad7859ca9d22883d07806694e3f6cd71bb970f81523a7974e5aab"
    end
    on_intel do
      url "https://github.com/Wavecom-hu/iptv-tui/releases/download/v1.0.4/iptv-tui_linux_amd64.tar.gz"
      sha256 "19100aca3564c757a0e6a6705e581cfc44658249e7bb804d554a8b6bfdb81c33"
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

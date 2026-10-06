# WaveCom TV a terminálban (iptv-tui)
class IptvTui < Formula
  desc "WaveCom TV in the terminal: live TV, guide, catch-up (IPTV client)"
  homepage "https://github.com/Wavecom-hu/iptv-tui"
  version "1.0.3"

  on_macos do
    on_arm do
      url "https://github.com/Wavecom-hu/iptv-tui/releases/download/v1.0.3/iptv-tui_darwin_arm64.tar.gz"
      sha256 "2e56fc1b5967cd9a23f8eed2f6a5dbfb9ff2375e4e2194dcc08667b138fd6a42"
    end
    on_intel do
      url "https://github.com/Wavecom-hu/iptv-tui/releases/download/v1.0.3/iptv-tui_darwin_amd64.tar.gz"
      sha256 "dc929605ec6927e31154043cb93930890c4d7340bb231d64418ebc0540397a68"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Wavecom-hu/iptv-tui/releases/download/v1.0.3/iptv-tui_linux_arm64.tar.gz"
      sha256 "b2349185639ace65402e52dd61e50169d0d47411312f5e84bd11324b8ebf2b16"
    end
    on_intel do
      url "https://github.com/Wavecom-hu/iptv-tui/releases/download/v1.0.3/iptv-tui_linux_amd64.tar.gz"
      sha256 "8c093dd17cd17f9e90e230c0fc57b1f2da77610d69c411d0cf0387f82011e3f8"
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

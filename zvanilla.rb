class Zvanilla < Formula
  homepage "https://github.com/NigoroJr/zvanilla.git"
  head "https://github.com/NigoroJr/zvanilla.git"

  def install
    prefix.install "zvanilla.zsh"
    mkdir_p "#{bin}"
    ln_sf "#{prefix}/zvanilla.zsh", "#{bin}/zvanilla"
  end

  test do
    system "#{bin}/zvanilla -h"
  end
end

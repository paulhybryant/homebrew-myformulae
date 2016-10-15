class Color < Formula
  homepage "https://github.com/molovo/color.git"
  head "https://github.com/molovo/color.git"

  def install
    prefix.install "color.zsh"
    mkdir_p "#{bin}"
    ln_sf "#{prefix}/color.zsh", "#{bin}/color"
  end

  test do
    system "#{bin}/color"
  end
end

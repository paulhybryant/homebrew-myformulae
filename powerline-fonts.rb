class PowerlineFonts < Formula
  homepage ""
  head "https://github.com/powerline/fonts.git"

  def install
    system "./install.sh"
    prefix.install Dir["./*"]
  end
end

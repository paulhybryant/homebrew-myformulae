class Xkbswitch < Formula
  homepage "https://github.com/ierton/xkb-switch"
  head "https://github.com/ierton/xkb-switch.git"

  def install
    system "cmake", "-DCMAKE_INSTALL_PREFIX:PATH=#{prefix}", "."
    system "make", "install"
  end if OS.linux?

  test do
    system "#{bin}/xkb-switch", "-h"
  end
end

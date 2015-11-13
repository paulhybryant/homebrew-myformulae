class TrashCli < Formula
  homepage "http://www.nongnu.org/xbindkeys/"
  head "http://git.savannah.gnu.org/cgit/xbindkeys.git"
  url "http://www.nongnu.org/xbindkeys/xbindkeys-1.8.6.tar.gz"

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make", "install"
  end if OS.linux?

  test do
    system "#{bin}/xbindkeys", "-h"
  end
end

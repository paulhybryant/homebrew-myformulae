class Xbindkeys < Formula
  homepage "http://www.nongnu.org/xbindkeys/"
  head "http://git.savannah.gnu.org/cgit/xbindkeys.git"
  url "http://www.nongnu.org/xbindkeys/xbindkeys-1.8.6.tar.gz"
  sha256 "6c0d18be19fc19ab9b4595edf3a23c0a6946c8a5eb5c1bc395471c8f9a710d18"

  depends_on "guile"

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make", "install"
  end if OS.linux?

  test do
    system "#{bin}/xbindkeys", "-h"
  end
end

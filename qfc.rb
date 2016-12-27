class Qfc < Formula
  homepage "https://github.com/pindexis/qfc.git"
  head "https://github.com/pindexis/qfc.git"

  depends_on :python

  def install
    prefix.install Dir["bin"]
    prefix.install Dir["qfc"]
    ln_sf "#{prefix}/qfc", "#{HOMEBREW_PREFIX}/lib/python2.7/site-packages"
  end

  test do
    system "#{bin}/qfc -h"
  end
end

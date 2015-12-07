class Fsqlf < Formula
  homepage "https://github.com/dnsmkl/fsqlf"
  head "https://github.com/dnsmkl/fsqlf.git"

  def install
    system "make", "fsqlf"
    # prefix.install "fsqlf"
    bin.install "fsqlf"
  end if OS.linux?

  test do
    system "#{bin}/fsqlf", "--help"
  end
end

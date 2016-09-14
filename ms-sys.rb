class MsSys < Formula
  homepage "http://sourceforge.net/projects/ms-sys/"
  url "https://downloads.sourceforge.net/project/ms-sys/ms-sys%20stable/2.4.1/ms-sys-2.4.1.tar.gz"
  sha256 "92953cc684499b71c919c055bf9e23bd850be04e"

  def install
    system "PREFIX='#{prefix}' make install"
  end

  test do
    system "ms-sys"
  end
end

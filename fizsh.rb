class Fizsh < Formula
  homepage "https://github.com/zsh-users/fizsh.git"
  head "https://github.com/zsh-users/fizsh.git"

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "#{bin}/fizsh -h"
  end
end

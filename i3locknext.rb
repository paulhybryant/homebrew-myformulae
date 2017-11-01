class I3locknext < Formula
  homepage "https://github.com/owenthewizard/i3lock-next"
  head "https://github.com/owenthewizard/i3lock-next.git"

  depends_on "imlib2"

  def install
    system "make", "PREFIX=#{prefix}"
    system "make", "PREFIX=#{prefix}", "install"
  end if OS.linux?

  test do
    system "#{bin}/i3lock-next", "-v"
  end
end

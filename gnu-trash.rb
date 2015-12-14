class GnuTrash < Formula
  desc "CLI tool that moves files or folder to the trash"
  homepage "http://hasseg.org/trash/"
  url "https://github.com/ali-rantakari/trash/archive/v0.8.5.tar.gz"
  sha256 "1e08fdcdeaa216be1aee7bf357295943388d81e62c2c68c30c830ce5c43aae99"

  def install
    system "make"
    system "make", "docs"
    system "mv trash gtrash"
    system "mv trash.1 gtrash.1"
    bin.install "gtrash"
    man1.install "gtrash.1"
  end

  test do
    system "#{bin}/gtrash"
  end
end

class Dotfiler < Formula
  homepage "https://github.com/svetlyak40wt/dotfiler"
  head "https://github.com/svetlyak40wt/dotfiler.git"

  depends_on "python"

  def install
    system "mv bin/dot bin/dotfiler"
    prefix.install Dir["bin"]
  end

  test do
    system "dotfiler -h"
  end
end

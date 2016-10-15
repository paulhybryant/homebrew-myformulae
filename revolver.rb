class Revolver < Formula
  homepage "https://github.com/molovo/revolver.git"
  head "https://github.com/molovo/revolver.git"

  def install
    bin.install "revolver"
  end

  test do
    system "#{bin}/revolver -help"
  end
end

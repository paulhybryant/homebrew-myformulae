class Zunit < Formula
  homepage "https://github.com/molovo/zunit.git"
  head "https://github.com/molovo/zunit.git"

  depends_on "revolver"
  depends_on "color"

  def install
    bin.install "zunit"
  end

  test do
    system "#{bin}/zunit"
  end
end

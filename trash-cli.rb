class TrashCli < Formula
  homepage "https://github.com/andreafrancia/trash-cli"
  head "https://github.com/andreafrancia/trash-cli.git"

  def install
    system "#{HOMEBREW_PREFIX}/bin/python", "setup.py", "install", "--install-scripts=#{bin}"
    # , "--record=#{prefix}/install.log"
  end

  test do
    system "#{bin}/trash", "-v"
  end
end

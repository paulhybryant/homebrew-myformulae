class PowerlineShell < Formula
  homepage "https://github.com/paulhybryant/powerline-shell.git"
  url "https://github.com/paulhybryant/powerline-shell.git"
  version "head"

  def install
    system "./install.py"
    system "cp -r * #{prefix}/"
    system "mkdir -p #{bin}"
    system "ln -f -s #{prefix}/powerline-shell.py #{bin}/powerline-shell.py"
  end

  test do
    system "#{bin}/powerline-shell.py -h"
  end
end

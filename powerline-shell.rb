class PowerlineShell < Formula
  homepage "https://github.com/paulhybryant/powerline-shell.git"
  head "https://github.com/paulhybryant/powerline-shell.git"

  depends_on "python"

  def install
    system "./install.py"
    system "cp -r * #{prefix}/"
    mkdir_p "#{bin}"
    ln_sf "#{prefix}/powerline-shell.py", "#{bin}/powerline-shell.py"
  end

  test do
    system "#{bin}/powerline-shell.py -h"
  end
end

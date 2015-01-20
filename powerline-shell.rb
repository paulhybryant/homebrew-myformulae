class PowerlineShell < Formula
  homepage "https://github.com/paulhybryant/powerline-shell.git"
  url "https://github.com/paulhybryant/powerline-shell.git"
  version "head"

  def install
    system "cp -r * #{prefix}/"
    system "pushd #{prefix}; echo $PWD; ./install.py; popd"
    system "ln -f -s #{prefix}/powerline-shell.py #{HOMEBREW_PREFIX}/bin"
  end

  test do
    system "true"
  end
end

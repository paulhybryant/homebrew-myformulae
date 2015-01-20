class PowerlineShell < Formula
  homepage "https://github.com/paulhybryant/powerline-shell.git"
  url "https://github.com/paulhybryant/powerline-shell.git"
  version "head"

  def install
    system "cp -r * #{prefix}/"
    # ruby uses /bin/sh for system command. For system where /bin/sh does not
    # support pushd / popd, the following line will fail.
    # For example, in ubuntu, /bin/sh points to /bin/dash. If /bin/sh is not a
    # symlink, /bin/sh does not support pushd / popd either.
    system "pushd #{prefix}; echo $PWD; ./install.py; popd"
    system "ln -f -s #{prefix}/powerline-shell.py #{HOMEBREW_PREFIX}/bin"
  end

  test do
    system "true"
  end
end

class Sshrc < Formula
  desc "Bring your .bashrc, .vimrc, etc. with you when you SSH"
  homepage "https://github.com/Russell91/sshrc"
  url "https://raw.githubusercontent.com/paulhybryant/dotfiles/master/misc/sshrc-0.6.2.tar.gz"
  sha256 "f3cc4a75b7905110d50db3deb11415851753a796e2c451c5dea2ee5a7f07fd33"

  def install
    bin.install %w[sshrc moshrc]
  end

  test do
    touch testpath/".sshrc"
    (testpath/"ssh").write <<~EOS
      #!/bin/sh
      true
    EOS
    chmod 0755, testpath/"ssh"
    ENV.prepend_path "PATH", testpath
    system "#{bin}/sshrc", "localhost"
  end
end

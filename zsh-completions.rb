class ZshCompletions < Formula
  homepage "https://github.com/paulhybryant/zsh-completions"
  url "https://github.com/paulhybryant/zsh-completions.git"
  version "head"

  def install
    (share/"zsh-completions").install Dir["src/_*"]
  end

  def caveats
    <<-EOS.undent
    To activate these completions, add the following to your .zshrc:

      fpath=(#{HOMEBREW_PREFIX}/share/zsh-completions $fpath)

    You may also need to force rebuild `zcompdump`:

      rm -f ~/.zcompdump; compinit

    Additionally, if you receive "zsh compinit: insecure directories" warnings when attempting
    to load these completions, you may need to run this:

      chmod go-w #{HOMEBREW_PREFIX}/share
    EOS
  end

  test do
    (testpath/".zshrc").write <<-EOS.undent
      fpath=(#{HOMEBREW_PREFIX}/share/zsh-completions $fpath)
      autoload -U compinit
      compinit
    EOS
    system "/bin/zsh", "--login", "-i", "-c", "which _ack"
  end
end
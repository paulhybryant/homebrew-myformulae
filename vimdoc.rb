class Vimdoc < Formula
  homepage ""
  head "https://github.com/google/vimdoc.git"

  depends_on :python3

  def install
    system "python3", "setup.py", "config"
    system "python3", "setup.py", "build"
    system "python3", "setup.py", "install", "--install-scripts=#{bin}", "--record=#{prefix}/install.log"
  end

  # def uninstall
    # system "cat #{HOMEBREW_PREFIX}/log/vimdoc.log"
    # # system "cat #{HOMEBREW_PREFIX}/log/vimdoc.log | xargs rm -r"
    # # system "rm -r #{HOMEBREW_PREFIX}/bin/vimdoc"
  # end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test vimdoc`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "#{bin}/vimdoc", "--version"
  end
end

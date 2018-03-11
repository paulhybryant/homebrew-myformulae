class PowerlineFontpatcher < Formula
  homepage ""
  head "https://github.com/Lokaltog/powerline-fontpatcher.git", :branch => "develop"

  depends_on "python"

  def install
    system "python", "setup.py", "install", "--install-scripts=#{bin}", "--record=#{prefix}/install.log"
  end

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
    system "#{bin}/powerline-fontpatcher", "--version"
  end
end

class Vroom < Formula
  homepage ""
  head "https://github.com/google/vroom.git"

  depends_on "python3"

  def install
    system "python3", "setup.py", "build"
    system "python3", "setup.py", "install", "--install-scripts=#{bin}", "--record=#{prefix}/install.log"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test vroom`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "#{bin}/vroom", "--version"
  end
end

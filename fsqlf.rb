class Fsqlf < Formula
  homepage "https://github.com/dnsmkl/fsqlf"
  head "https://github.com/dnsmkl/fsqlf.git"

  patch :DATA

  def install
    system "make", "fsqlf"
    # prefix.install "fsqlf"
    bin.install "fsqlf"
  end if OS.linux?

  test do
    system "#{bin}/fsqlf", "--help"
  end
end

__END__
diff --git a/makefile b/makefile
index 51a0462..e17403c 100644
--- a/makefile
+++ b/makefile
@@ -23,7 +23,6 @@ PREFIX=/usr/local
 EXEC_CLI=fsqlf
 EXEC_GUI=wx_fsqlf
 CC=gcc
-CFLAGS+=-m32
 CXX=g++
 CXXFLAGS+= `wx-config --cxxflags`
 LDFLAGS+= `wx-config --libs`

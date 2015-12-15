class Fsqlf < Formula
  homepage "https://github.com/dnsmkl/fsqlf"
  head "https://github.com/dnsmkl/fsqlf.git", :checkout => "2d82a4fcaddd4bdc4e2983115e0b0a4f42e1252b"
  patch :DATA

  def install
    if OS.mac?
      ENV["LINUXTYPE"]="Darwin"
      system "make", "fsqlf"
      lib.install "libfsqlf.dylib"
    elsif OS.linux?
      system "make", "fsqlf"
      lib.install "libfsqlf.so"
    end
    bin.install "fsqlf"
  end

  test do
    system "#{bin}/fsqlf", "--help"
  end
end

__END__
diff --git a/makefile b/makefile
index b85eae2..c95a8f0 100644
--- a/makefile
+++ b/makefile
@@ -4,6 +4,7 @@ CFLAGS+=-std=c99
 CFLAGS+=-Wall
 CFLAGS+=-pedantic-errors
 CFLAGS+=-g
+CFLAGS+=-fPIC

 CXXFLAGS+=-DVERSION=\"$(VERSION)\"

@@ -26,14 +27,10 @@ else
 	CXX=g++
 	CXXFLAGS+= `wx-config --cxxflags`
 	LDFLAGS+= `wx-config --libs`
-	ifneq (Darwin, ${_system_type})
-		CFLAGS+=-m32
-	else
-		CFLAGS+=-m64
-	endif
+	CFLAGS+=-m64
 endif

-ifeq (Darwin, ${_system_type})
+ifeq (Darwin, ${LINUXTYPE})
 	LIBNAME=libfsqlf.dylib
 	LIBFLAGS=-dynamiclib
 else

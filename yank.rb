class Yank < Formula
  desc "Yank terminal output to clipboard"
  homepage "https://github.com/mptre/yank"
  url "https://github.com/mptre/yank/archive/v0.6.2.tar.gz"
  sha256 "e6dbeb1b8e5883f76156c2d3ff1b9a4171a6b59fabf5d38469e33d7719ffeb1b"

  def install
    system "make", "install", "PREFIX=#{prefix}", "YANKCMD=xclip"
  end

  test do
    (testpath/"test").write <<-EOS.undent
      #!/usr/bin/expect -f
      spawn sh
      set timeout 1
      send "echo key=value | yank -d = | cat"
      send "\r"
      send ""
      send "\r"
      expect {
            "value" { send "exit\r"; exit 0 }
            timeout { send "exit\r"; exit 1 }
      }
    EOS
    (testpath/"test").chmod 0755
    system "./test"
  end
end

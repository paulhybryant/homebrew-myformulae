class Aria2Daemon < Formula
  homepage "https://github.com/aria2/aria2"
  head "https://github.com/paulhybryant/aria2-daemon.git"

  depends_on "aria2"

  def install
    inreplace "aria2.conf", "\$dir", "${HOME}/Downloads"
    inreplace "aria2.conf", "\$session", "#{share}/aria2.session"
    share.install "aria2.conf"
    share.install "aria2.session"
  end

  plist_options :manual => "aria2-daemon"

  def plist; <<~EOS
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple Computer//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
    <dict>
      <key>Label</key>
      <string>#{plist_name}</string>
      <key>ProgramArguments</key>
      <array>
        <string>#{HOMEBREW_PREFIX}/bin/aria2c</string>
        <string>--conf-path</string>
        <string>#{share}/aria2.conf</string>
        <string>--input-file</string>
        <string>#{share}/aria2.session</string>
      </array>
      <key>KeepAlive</key>
      <true/>
    </dict>
    </plist>
    EOS
  end
end

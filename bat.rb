class Bat < Formula
  desc "Better cat"
  version '0.9.0'
  homepage "https://github.com/sharkdp/bat"
  url "https://github.com/sharkdp/bat/releases/download/v#{version}/bat_#{version}_amd64.deb"
  sha256 "0b97d912d57eb0504d4e81cafedb23991d5c927a2099c0c152575b2d956bcec5"

  def install
    system "sudo dpkg -i bat_0.9.0_amd64.deb"
  end if OS.linux?
end

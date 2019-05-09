cask 'mubu' do
  version '1.1.11'
  sha256 'fae993fb8ba732975ae7de83b1dfe3eaa3f5f41abcfc810c67f6b1812a0adb2d'

  url "http://lf6-ttcdn-tos.pstatp.com/obj/mubu-img/client/Mubu-#{version}.dmg"
  name 'Mubu'
  homepage 'https://mubu.com'

  app '幕布.app'

  zap trash: []
end

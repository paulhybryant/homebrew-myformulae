cask 'mubu' do
  version '1.1.13'
  sha256 'df9847030e44b05e4b89304e2c78d5773d6812a2e8e220f06971e3f315bc251a'

  url "http://lf6-ttcdn-tos.pstatp.com/obj/mubu-img/client/Mubu-#{version}.dmg"
  name 'Mubu'
  homepage 'https://mubu.com'

  app '幕布.app'

  zap trash: []
end

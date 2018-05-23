cask 'alfred3' do
  version '3.6.1_910'
  sha256 'fdefdb35047e193e1d06f5a441f4aabd4b45b24fd43c63d223d8508ad11a131e'

  url "https://cachefly.alfredapp.com/Alfred_#{version}.dmg"
  name 'Alfred3'
  homepage 'https://www.alfredapp.com/'

  app 'Alfred 3.app'

  zap trash: []
end

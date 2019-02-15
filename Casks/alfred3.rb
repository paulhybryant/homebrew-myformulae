cask 'alfred3' do
  version '3.8_959'
  sha256 '1dd15f3063913c22a53eea07f8ffb9b02a61d691416df21f61a57537461da4d5'

  url "https://cachefly.alfredapp.com/Alfred_#{version}.dmg"
  name 'Alfred3'
  homepage 'https://www.alfredapp.com/'

  app 'Alfred 3.app'

  zap trash: []
end

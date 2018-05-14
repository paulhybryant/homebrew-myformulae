cask 'restor' do
  version '1.6'
  sha256 '2894a7a49afda3adafbd27914fdb4853e2c73d0021e2d958d8976c1c98ca4a97'

  url "https://github.com/google/restor/releases/download/#{version}/restor-#{version}.dmg"
  name 'Restor'
  homepage 'https://github.com/google/restor'

  app 'Restor.app'

  zap trash: []
end

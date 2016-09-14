cask 'spectacle' do

  version '1.0.6'
  sha256 '189626c02986911ba8969f548ed1417ec59b5e1b4135f5978bc20553cf5317eb'

  url "https://s3.amazonaws.com/spectacle/downloads/Spectacle+#{version}.zip"
  name 'Spectacle'
  homepage 'https://www.spectacleapp.com/'
  license :public_domain

  app 'Spectacle.app'
end

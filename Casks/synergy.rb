cask :v1 => 'synergy' do

  version '1.7.4'
  sha256 'af8a760f1e23b3288d5b021c89de4ff232ec53b219f89e5e6b7cbb666d876701'

  url "file://#{ENV["HOME"]}/.osx/synergy-#{version}.dmg"
  name 'synergy'
  homepage 'http://synergy-project.org/'
  license :gpl

  app 'Synergy.app'
end

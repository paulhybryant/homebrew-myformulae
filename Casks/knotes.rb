cask 'knotes' do
  version '1.4.0'
  sha256 '1ff812e0d7811cbb206c549cae0692e61db9c2d836a54a89c8278b65681e4cd9'

  url "https://s3.ap-northeast-2.amazonaws.com/knotes-release-cn/mac/Knotes-#{version}.dmg"
  name 'Knotes'
  homepage 'http://knotesapp.com/'

  app 'Knotes.app'

  zap trash: []
end

cask :v1 => 'yasu' do

  if MacOS.release <= :snow_leopard
    version '2.8.2'
    sha256 '427672a45b8315c2f38d968ea5e0c35c21b91091a1fe0e750fcd2b0078644336'
    url "http://yasuapp.net/files/yasu_#{version}.zip"
  else
    version '2.9.1'
    sha256 '597385cec59650cf5f5c9b54e22df5c0a87e4298e2164ceb09cf446b83646547'
    url "http://yasuapp.net/files/yasu_#{version}.zip"
  end

  name 'Yasu'
  homepage 'http://yasuapp.net'
  license :gratis

  app 'Yasu.app'

  zap :delete => [
                  '~/Library/Caches/com.apple.helpd/Generated/net.yasuapp.yasu.help',
                  '~/Library/Caches/net.yasuapp.yasu',
                  '~/Library/Logs/Yasu.log',
                  '~/Library/Preferences/net.yasuapp.yasu.plist',
                  '~/Library/Preferences/org.jimmitchell.yasu.plist',
                 ]

  caveats <<-EOS.undent
    Yasu is no longer maintained and updated. There is no support for any Yasu downloads. Yasu may not work with OS X beyond Yosemite.
    Use at your own risk.

    Official announcement can be found on the Yasu homepage.
  EOS
end

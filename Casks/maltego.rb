cask 'maltego' do
  version '4.2.11.13104'
  sha256 '28692e8915809ef78d99c9fb6e2e79213382a88c422ec0e80cb7fdfa748d6a80'

  # maltego-downloads.s3.us-east-2.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://maltego-downloads.s3.us-east-2.amazonaws.com/mac/Maltego.v#{version}.dmg"
  appcast 'https://maltego-downloads.s3.us-east-2.amazonaws.com/info.json'
  name 'Maltego'
  homepage 'https://www.maltego.com/pricing-plans/'

  app 'Maltego.app'

  zap trash: '~/Library/Application Support/maltego'

  caveats do
    depends_on_java '11'
  end
end

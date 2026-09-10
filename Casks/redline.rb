cask "redline" do
  version "1.2"
  sha256 "ea9b85318e1168639f0b87f0873e022d6955c323d7e6b0459feac4c95b5f0ff0"

  url "https://github.com/apeabody007/redline/releases/download/v#{version}/Redline.dmg"
  name "Redline"
  desc "Floating vitals pill for Apple Silicon Macs"
  homepage "https://github.com/apeabody007/redline"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Redline.app"

  zap trash: "~/Library/Preferences/dev.aaronpeabody.redline.plist"
end

cask "redline" do
  version "1.1"
  sha256 "7f1bc92705b6d4db8823d6a3970ded7a8ca3f70fd50237089d4de2def47e7831"

  url "https://github.com/apeabody007/redline/releases/download/v#{version}/Redline.dmg"
  name "Redline"
  desc "Floating vitals pill for Apple Silicon Macs"
  homepage "https://github.com/apeabody007/redline"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "Redline.app"

  zap trash: "~/Library/Preferences/dev.aaronpeabody.redline.plist"
end

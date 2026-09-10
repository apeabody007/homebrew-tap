cask "timeturner" do
  version "1.8"
  sha256 "49ad1aabd26ec38a607b5625f95d1579d2bf9117b60d1339a4b062c818969691"

  url "https://github.com/apeabody007/timeturner/releases/download/v#{version}/TimeTurner.dmg"
  name "TimeTurner"
  desc "Menu bar hourglass that drains real sand over the clock hour"
  homepage "https://github.com/apeabody007/timeturner"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "TimeTurner.app"

  zap trash: "~/Library/Preferences/dev.aaronpeabody.timeturner.plist"
end

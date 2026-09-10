cask "timeturner" do
  version "1.7"
  sha256 "3854aaab45aa7219950c941d45fe3f8e18c870bcf08742fb0d598950a9d34180"

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

cask "timeturner" do
  version "1.6"
  sha256 "06c3f00b66758cff53dc7a51ba07d27d3012f58588415d72397a3e90683a9874"

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

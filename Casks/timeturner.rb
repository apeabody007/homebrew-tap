cask "timeturner" do
  version "1.5"
  sha256 "91d782685e0466800af92c0e2e3f444fb4d970913b855c10d8d4d331d6aec916"

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

cask "redline" do
  version "1.5"
  sha256 "fc7ba4f25fef16908188f5f1325073b11156c1d519353a1a05a4db3cd9ce2b2d"

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

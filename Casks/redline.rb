cask "redline" do
  version "1.4"
  sha256 "30470b057bf671ee5bd202df852d9f444feb694d1417c5002c5d01d6e149f638"

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

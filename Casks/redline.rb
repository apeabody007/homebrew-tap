cask "redline" do
  version "1.3"
  sha256 "804bd53c3f47eeb219444457619d80ddeb0bb1739d398c77a938b91d8d62a56c"

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

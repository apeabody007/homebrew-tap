cask "redline" do
  version "1.1"
  sha256 "535e1cf8e16186a8aefb8b28c5baab25a101a681a0aeddd2b62df17a66e1c157"

  url "https://github.com/apeabody007/redline/releases/download/v#{version}/Redline-#{version}.dmg"
  name "Redline"
  desc "Floating CPU, GPU, memory and die temperature readout with a throttle warning"
  homepage "https://github.com/apeabody007/redline"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Redline.app"

  # The same executable also answers --once, --sensors and --help, so it is
  # worth having on PATH rather than buried in the bundle.
  binary "#{appdir}/Redline.app/Contents/MacOS/Redline", target: "redline"

  zap trash: [
    "~/Library/Preferences/dev.aaronpeabody.redline.plist",
  ]

  caveats <<~EOS
    Redline is a menu bar app with no dock icon. Launch it from Applications,
    then turn on Launch at Login from its menu bar item.
  EOS
end

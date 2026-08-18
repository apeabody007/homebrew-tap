class Redline < Formula
  desc "Floating CPU, GPU, memory and die temperature readout for Apple Silicon Macs"
  homepage "https://github.com/apeabody007/redline"
  url "https://github.com/apeabody007/redline/archive/refs/tags/v1.1.tar.gz"
  sha256 "1c969f71ed43497d6eeae2728ba6564a122683efcd62c056fd44b06dc84d0a69"
  license "MIT"
  head "https://github.com/apeabody007/redline.git", branch: "main"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    # Built here rather than shipped as a binary: locally compiled code is
    # never quarantined, so this needs no Developer ID certificate and no
    # notarization to run.
    system "./build.sh"
    prefix.install "build/Redline.app"

    # The app bundle finds its own resources by its real path, so this is a
    # wrapper rather than a symlink into the bundle.
    (bin/"redline").write <<~SH
      #!/bin/bash
      exec "#{opt_prefix}/Redline.app/Contents/MacOS/Redline" "$@"
    SH
  end

  def caveats
    <<~EOS
      Redline is a menu bar app. Link it into /Applications and open it:
        ln -sfn #{opt_prefix}/Redline.app /Applications/Redline.app
        open /Applications/Redline.app

      Turn on Launch at Login from its menu bar item.

      The command line works straight away:
        redline --once      one reading, printed and exit
        redline --sensors   every temperature sensor this Mac exposes
    EOS
  end

  test do
    # No GPU or thermal sensors on a build bot, so this asserts the readings
    # that always exist and that the rest degrades instead of crashing.
    output = shell_output("#{bin}/redline --once")
    assert_match(/^CPU /, output)
    assert_match(/^RAM /, output)
    assert_match(/^Thermal /, output)
    assert_match "Redline", shell_output("#{bin}/redline --help")
  end
end

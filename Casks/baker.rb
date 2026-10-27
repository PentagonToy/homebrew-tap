cask "baker" do
  version "0.1.0"
  sha256 "d6b3d5588c8527322c3a6e37d25562aaff5c3a8033f67d410d1f34baada359be"

  url "https://github.com/PentagonToy/Baker/releases/download/v#{version}/Baker-#{version}-arm64.dmg"
  name "Baker"
  desc "Local screen capture, text and formula recognition"
  homepage "https://github.com/PentagonToy/Baker"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Baker.app"

  caveats <<~EOS
    Optional PDF conversion requires macOS 26.2 or later.
    Captures and preferences remain after uninstalling Baker.
  EOS
end

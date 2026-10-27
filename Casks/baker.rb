cask "baker" do
  version "0.1.1"
  sha256 "8e855a396e53f575ca0d73c1dd9ca15635eb67e882372cd054216100204576f3"

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

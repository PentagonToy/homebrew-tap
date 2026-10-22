cask "baker" do
  version "0.0.4"
  sha256 "ea37cd0447597cde869c90ae24ab6294d3dffe9ea391630ebe30ebc05c64a5d3"

  url "https://github.com/PentagonToy/Baker/releases/download/v#{version}/Baker-#{version}-arm64.dmg"
  name "Baker"
  desc "Local screen capture, text and formula recognition"
  homepage "https://github.com/PentagonToy/Baker"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Baker.app"

  caveats <<~EOS
    Baker is self-signed and is not notarised.
    Review macOS first-launch guidance before opening it:
      https://pentagontoy.github.io/Baker/help/troubleshooting.html
    Optional PDF conversion requires macOS 26.2 or later.
    Captures and preferences remain after uninstalling Baker.
  EOS
end

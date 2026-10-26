cask "baker" do
  version "0.0.9"
  sha256 "8e55c43d77df064a3c366ae943f67dee2e40ea754d3ed9076b7dbf45a060106c"

  url "https://github.com/PentagonToy/Baker/releases/download/v#{version}/Baker-#{version}-arm64.dmg"
  name "Baker"
  desc "Local screen capture, text and formula recognition"
  homepage "https://github.com/PentagonToy/Baker"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Baker.app"

  caveats <<~EOS
    Baker is locally signed and is not notarised.
    Review macOS first-launch guidance before opening it:
      https://pentagontoy.github.io/Baker/help/troubleshooting/
    Optional PDF conversion requires macOS 26.2 or later.
    Captures and preferences remain after uninstalling Baker.
  EOS
end

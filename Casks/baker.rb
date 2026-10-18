cask "baker" do
  version "0.0.3"
  sha256 "91820e0ba0f5f3497e6b4aaebdc10a9cc1a804012b7daf932b086e74b0448df1"

  url "https://github.com/PentagonToy/Baker/releases/download/v#{version}/Baker-#{version}-arm64.dmg"
  name "Baker"
  desc "Local screen capture, text and formula recognition"
  homepage "https://github.com/PentagonToy/Baker"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Baker.app"

  caveats <<~EOS
    Baker is ad-hoc signed and is not notarised.
    Review macOS first-launch guidance before opening it:
      https://pentagontoy.github.io/Baker/help/troubleshooting.html
    Optional PDF conversion requires macOS 26.2 or later.
    Captures and preferences remain after uninstalling Baker.
  EOS
end

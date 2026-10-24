cask "baker" do
  version "0.0.5"
  sha256 "41a6d98cde87df6826dd314f4d5f0a3afb2ae3f2ab19ac2040a8884adf75608b"

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

cask "baker" do
  version "0.0.6"
  sha256 "d67ebf13a45bb8d4328a00807027995d89ecb0191371d3e927880b049d5ab6ff"

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

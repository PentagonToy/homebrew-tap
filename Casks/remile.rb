cask "remile" do
  version "0.1.0"
  sha256 "656eabd4f13e4afef565f7a80c0d929dad22fcd82b0e54fb3f04678793c27c9a"
  url "https://github.com/PentagonToy/remile/releases/download/v#{version}/remile-#{version}-arm64.dmg"
  name "remile."
  desc "Local document workspace for reading, writing and library search"
  homepage "https://github.com/PentagonToy/remile"
  depends_on macos: :sonoma
  depends_on arch: :arm64
  app "remile.app"
  binary "#{appdir}/remile.app/Contents/Resources/CLI/remile"

  caveats <<~EOS
    remile. 0.1.0 is ad hoc signed and is not notarised by Apple.
    Review the installation notes before the first launch:
      https://github.com/PentagonToy/remile#install
    LaTeX compilation requires separately installed TeX tools.
    Documents and preferences remain after uninstalling remile.
  EOS
end

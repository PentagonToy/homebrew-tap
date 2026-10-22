cask "remile" do
  version "0.1.3"
  sha256 "7b6661700782b37dec61492635d806aee56f68d94f2f2fff58278eefa358d4d9"
  url "https://github.com/PentagonToy/remile/releases/download/v#{version}/remile-#{version}-arm64.dmg"
  name "remile."
  desc "Local document workspace for reading, writing and library search"
  homepage "https://github.com/PentagonToy/remile"
  depends_on macos: :sonoma
  depends_on arch: :arm64
  app "remile.app"
  binary "#{appdir}/remile.app/Contents/Resources/CLI/remile"

  caveats <<~EOS
    remile. 0.1.3 is ad hoc signed and is not notarised by Apple.
    Review the installation notes before the first launch:
      https://github.com/PentagonToy/remile#install
    LaTeX compilation requires separately installed TeX tools.
    Documents and preferences remain after uninstalling remile.
  EOS
end

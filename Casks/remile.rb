cask "remile" do
  version "0.1.2"
  sha256 "03a300a9e4697168cd60544b6266f943033c0ecbf86ede27186269de959ba5e3"
  url "https://github.com/PentagonToy/remile/releases/download/v#{version}/remile-#{version}-arm64.dmg"
  name "remile."
  desc "Local document workspace for reading, writing and library search"
  homepage "https://github.com/PentagonToy/remile"
  depends_on macos: :sonoma
  depends_on arch: :arm64
  app "remile.app"
  binary "#{appdir}/remile.app/Contents/Resources/CLI/remile"

  caveats <<~EOS
    remile. 0.1.2 is ad hoc signed and is not notarised by Apple.
    Review the installation notes before the first launch:
      https://github.com/PentagonToy/remile#install
    LaTeX compilation requires separately installed TeX tools.
    Documents and preferences remain after uninstalling remile.
  EOS
end

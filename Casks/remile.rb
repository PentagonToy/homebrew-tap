cask "remile" do
  version "0.1.1"
  sha256 "5dbf1ecf49a7d2dd13b82cf6199e76b869c9280b8b9dac7bd97ab55b02b06991"
  url "https://github.com/PentagonToy/remile/releases/download/v#{version}/remile-#{version}-arm64.dmg"
  name "remile."
  desc "Local document workspace for reading, writing and library search"
  homepage "https://github.com/PentagonToy/remile"
  depends_on macos: :sonoma
  depends_on arch: :arm64
  app "remile.app"
  binary "#{appdir}/remile.app/Contents/Resources/CLI/remile"

  caveats <<~EOS
    remile. 0.1.1 is ad hoc signed and is not notarised by Apple.
    Review the installation notes before the first launch:
      https://github.com/PentagonToy/remile#install
    LaTeX compilation requires separately installed TeX tools.
    Documents and preferences remain after uninstalling remile.
  EOS
end

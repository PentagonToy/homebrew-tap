cask "remile" do
  version "0.2.8"
  sha256 "d833ccdf92b4b4470212db6d7cab8675b2c2e84bf85b3de44e11453305961ab8"
  url "https://github.com/PentagonToy/remile/releases/download/v#{version}/remile-#{version}-arm64.dmg"
  name "remile."
  desc "Local document workspace for reading, writing and library search"
  homepage "https://github.com/PentagonToy/remile"
  depends_on macos: :sonoma
  depends_on arch: :arm64
  app "remile.app"
  binary "#{appdir}/remile.app/Contents/Resources/CLI/remile"

  caveats <<~EOS
    LaTeX compilation requires separately installed TeX tools.
    Documents and preferences remain after uninstalling remile.
  EOS
end

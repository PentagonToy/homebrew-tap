cask "remile" do
  version "0.2.7"
  sha256 "2dec873dc11b6836759c0d5c4d51eeabfa980c20dd10b63c0a1d6fe0499361d5"
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

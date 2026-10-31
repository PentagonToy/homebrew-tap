cask "remile" do
  version "0.2.3"
  sha256 "6d7a922a3c585e89509f9c0022f0914ea6bd1f2834725361f3d27f337f61c6c4"
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

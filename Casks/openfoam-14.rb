cask "openfoam-14" do
  version "0.1.0"
  sha256 "d48d9e4e692595139fff6da51df3d18285822c8058441fa1d982b0da94665a75"

  url "https://github.com/PentagonToy/OpenFOAM-MacOS/releases/download/v#{version}/openfoam-14-#{version}-arm64.dmg"
  name "OpenFOAM 14"
  desc "Native macOS distribution of OpenFOAM Foundation 14"
  homepage "https://github.com/PentagonToy/OpenFOAM-MacOS"

  depends_on arch: :arm64
  depends_on macos: :sequoia
  app "OpenFOAM-14.app"
  binary "#{appdir}/OpenFOAM-14.app/Contents/Resources/openfoam-14"

  uninstall script: {
    executable:   "#{appdir}/OpenFOAM-14.app/Contents/Resources/openfoam-14",
    args:         ["--eject"],
    must_succeed: false,
  }

  caveats <<~EOS
    Quit OpenFOAM 14 sessions and run openfoam-14 --eject before upgrading.
    User cases and libraries remain in your OpenFOAM user directory.
  EOS
end

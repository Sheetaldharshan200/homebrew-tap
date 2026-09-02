cask "exasol-studio" do
  version "2026.7.0"

  on_arm do
    sha256 "dc7311ad952169c931ab7ea76392e8bcfaad0da21ce8ecb13fb0ef1e0100e6d6"
    url "https://github.com/Sheetaldharshan200/Exasol-studio/releases/download/v#{version}/ExasolStudio-Mac-AppleSilicon.dmg"
  end
  on_intel do
    sha256 "59643c56f83969029b71fa1489fee62178245c34a27bc5f71c64c796ab7e7a83"
    url "https://github.com/Sheetaldharshan200/Exasol-studio/releases/download/v#{version}/ExasolStudio-Mac-Intel.dmg"
  end

  name "Exasol Studio"
  desc "Desktop Exasol client with a local database, AI assistant, and data tooling"
  homepage "https://github.com/Sheetaldharshan200/Exasol-studio"

  app "Exasol Studio.app"

  # DEMO BUILD: not yet notarized by Apple. Strip the quarantine flag so
  # `brew install --cask` launches cleanly. Remove once a notarized build ships.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Exasol Studio.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/com.exasol.studio",
    "~/Library/Caches/com.exasol.studio",
    "~/Library/Preferences/com.exasol.studio.plist",
    "~/Library/Saved Application State/com.exasol.studio.savedState",
  ]
end

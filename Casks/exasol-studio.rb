cask "exasol-studio" do
  version "2026.6.1"

  on_arm do
    sha256 "d4b2584359f36023d972c80dd570b0bc78a318f18bee2172f7d09a5f67b860ca"
    url "https://github.com/Sheetaldharshan200/Exasol-studio/releases/download/v#{version}/ExasolStudio-Mac-AppleSilicon.dmg"
  end
  on_intel do
    sha256 "9abdc95f1c4e2fa8bf17c41197f52a3bb37a5b107ef10bdd1f895a3dd60a7cdb"
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

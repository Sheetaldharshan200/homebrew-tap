cask "exasol-studio" do
  version "2026.0.9"

  on_arm do
    sha256 "cc59d0f35583ad8e38053c88825ccbb9aa839fddd68965af34b8d4841130b9bb"
    url "https://github.com/Sheetaldharshan200/Exasol-studio/releases/download/v#{version}/ExasolStudio-Mac-AppleSilicon.dmg"
  end
  on_intel do
    sha256 "7394a568e7808b2354a0cf30fc04a45ac0bd12cf198582afe610dd4a9f04f025"
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

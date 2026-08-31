cask "exasol-studio" do
  version "2026.6.0"

  on_arm do
    sha256 "0f2636a5930e1be1525da2cbc064fc1d90ce433ac29f15a3245d164850dac214"
    url "https://github.com/Sheetaldharshan200/Exasol-studio/releases/download/v#{version}/ExasolStudio-Mac-AppleSilicon.dmg"
  end
  on_intel do
    sha256 "d8d1c56939825a32e63a7d460118a0cfeb04b3769a3a8c9bd2c8d94f763c2712"
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

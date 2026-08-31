cask "exasol-studio" do
  version "2026.5.0"

  on_arm do
    sha256 "5d541334363ae1dec2dc6a08933c0856dfecefac9f0befd6590b1403d6b5b89a"
    url "https://github.com/Sheetaldharshan200/Exasol-studio/releases/download/v#{version}/ExasolStudio-Mac-AppleSilicon.dmg"
  end
  on_intel do
    sha256 "e55792c52e95ff494afc5b3f17b45a5dda74fe05738c315610e24c6081f5d73e"
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

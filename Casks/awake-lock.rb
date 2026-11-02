cask "awake-lock" do
  version "0.1.0"
  sha256 "b76462703c829621862d528def6f5c05a9628a9882e6c08e49bc3c4e31ebd5b1"

  url "https://github.com/sayyidsyamil/awake-lock/releases/download/v#{version}/Awake-Lock-#{version}.zip"
  name "Awake Lock"
  desc "Menu-bar app that keeps the Mac awake for a timed work session"
  homepage "https://github.com/sayyidsyamil/awake-lock"

  depends_on macos: :ventura

  app "Awake Lock.app"

  # Preview builds are ad-hoc signed, so drop the quarantine flag that Gatekeeper
  # would otherwise use to block the first launch.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Awake Lock.app"]
  end

  uninstall quit: "io.awakelock.app"

  zap trash: [
    "~/Library/Preferences/io.awakelock.app.plist",
    "~/Library/Application Support/Awake Lock",
    "~/Library/Caches/io.awakelock.app",
  ]

  caveat <<~EOS
    Closed-lid support installs a root helper and is optional. Enable it from the
    app panel, then remove it with:
      sudo bash "#{appdir}/Awake Lock.app/Contents/Resources/uninstall-helper.sh"
  EOS
end

cask "port-pocket" do
  version "0.1.0"
  sha256 "f0210bfc6654998b7425b65dcf32a5366ea5576ed1dea3ddf01e93b932d68ef5"

  url "https://github.com/sayyidsyamil/port-pocket/releases/download/v#{version}/Port-Pocket-#{version}.zip"
  name "Port Pocket"
  desc "Menu-bar panel for local TCP listeners and their processes"
  homepage "https://github.com/sayyidsyamil/port-pocket"

  depends_on macos: :ventura

  app "Port Pocket.app"

  # Preview builds are ad-hoc signed, so drop the quarantine flag that Gatekeeper
  # would otherwise use to block the first launch.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Port Pocket.app"]
  end

  uninstall quit: "io.portpocket.app"

  zap trash: [
    "~/Library/Preferences/io.portpocket.app.plist",
    "~/Library/Application Support/Port Pocket",
    "~/Library/Caches/io.portpocket.app",
  ]
end

cask "port-pocket" do
  version "0.1.0"
  sha256 "SHA256_PLACEHOLDER"

  url "https://github.com/sayyidsyamil/port-pocket/releases/download/v#{version}/Port-Pocket-#{version}.zip"
  name "Port Pocket"
  desc "Menu-bar panel for local TCP listeners and their processes"
  homepage "https://github.com/sayyidsyamil/port-pocket"

  depends_on macos: ">= :ventura"

  app "Port Pocket.app"

  uninstall quit: "io.portpocket.app"

  zap trash: [
    "~/Library/Preferences/io.portpocket.app.plist",
    "~/Library/Application Support/Port Pocket",
    "~/Library/Caches/io.portpocket.app",
  ]
end

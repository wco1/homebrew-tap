cask "mellow-kitty" do
  version "0.2.1"
  sha256 "da8de83e0c42310489c93d97ee17e0bc41321813d04b7b633409c29d4efb4976"

  url "https://www.mellow.world/cat/Mellow-Kitty-#{version}.dmg"
  name "Mellow Kitty"
  desc "Filmed cat that lives on the edge of the Mellow window and guards a focus timer"
  homepage "https://www.mellow.world/cat"

  livecheck do
    url "https://www.mellow.world/cat"
    regex(/Mellow[._-]Kitty[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  auto_updates true
  depends_on macos: :monterey

  app "Mellow Kitty.app"

  zap trash: [
    "~/Library/Application Support/MellowMac",
    "~/Library/Caches/app.quietly.creator.mac",
    "~/Library/HTTPStorages/app.quietly.creator.mac",
    "~/Library/HTTPStorages/app.quietly.creator.mac.binarycookies",
    "~/Library/Preferences/app.quietly.creator.mac.plist",
    "~/Library/Saved Application State/app.quietly.creator.mac.savedState",
    "~/Library/WebKit/app.quietly.creator.mac",
  ]
end

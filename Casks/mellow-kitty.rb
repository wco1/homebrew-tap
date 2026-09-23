cask "mellow-kitty" do
  version "0.2.0"
  sha256 "004ecbff52d268f65c14ee8f9391e461be5bef28e379c85fedbbe2b79ddb1441"

  url "https://www.mellow.world/cat/Mellow-Kitty-#{version}.dmg"
  name "Mellow Kitty"
  desc "Filmed cat that lives on the edge of the Mellow window and guards a focus timer"
  homepage "https://www.mellow.world/cat"

  livecheck do
    url "https://www.mellow.world/cat"
    regex(/Mellow[._-]Kitty[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

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

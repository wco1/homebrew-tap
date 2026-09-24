cask "mellow-kitty" do
  version "0.2.4"
  sha256 "5352a4ec18854878cdc8e1f10a06d7702e7bc8b2e93b04f9e463d0309209c463"

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

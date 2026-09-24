cask "mellow-kitty" do
  version "0.2.2"
  sha256 "5cb7c4b06f2fda01c703dd1396b5bedbaffa67381b22b09f0830938f9e355177"

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

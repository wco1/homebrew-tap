cask "mellow-kitty" do
  version "0.1.5"
  sha256 "cf497715945e09bf273221986b8e6862006daf6133cdd6c57d27b7d197107586"

  url "https://www.mellow.world/cat/Mellow-Kitty-#{version}.dmg"
  name "Mellow Kitty"
  desc "Filmed cat that lives on the edge of the Mellow window and guards a focus timer"
  homepage "https://www.mellow.world/cat"

  livecheck do
    url "https://www.mellow.world/cat"
    regex(/Mellow[._-]Kitty[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: :sonoma

  app "Mellow Kitty.app"

  zap trash: [
    "~/Library/Application Support/MellowMac",
    "~/Library/Caches/app.quietly.creator.mac",
    "~/Library/Preferences/app.quietly.creator.mac.plist",
    "~/Library/Saved Application State/app.quietly.creator.mac.savedState",
  ]
end

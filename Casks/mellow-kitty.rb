cask "mellow-kitty" do
  version "0.1.0"
  sha256 "327a87fd91c2e4557b9d855ba43022c60c38c182dcb39a98526d62f76a5c2ce2"

  url "https://www.mellow.world/cat/Mellow-Kitty-#{version}.dmg"
  name "Mellow Kitty"
  desc "Filmed tabby cat that lives on the edge of the Mellow window, guards a focus timer and carries posts to the Plan"
  homepage "https://www.mellow.world/cat"

  livecheck do
    url "https://www.mellow.world/cat"
    regex(/Mellow[._-]Kitty[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :sonoma"

  app "Mellow Kitty.app"

  zap trash: [
    "~/Library/Application Support/MellowMac",
    "~/Library/Caches/app.quietly.creator.mac",
    "~/Library/Preferences/app.quietly.creator.mac.plist",
    "~/Library/Saved Application State/app.quietly.creator.mac.savedState",
  ]
end

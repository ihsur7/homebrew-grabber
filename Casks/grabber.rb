cask "grabber" do
  version "1.0.24"
  sha256 "bd25fa74ab445b6166180bc00716a61882d70bf4cfb28a24a9b3163ab0d92fd3"

  url "https://github.com/ihsur7/grabber/releases/download/v#{version}/grabber-#{version}.zip"
  name "Grabber"
  desc "Menu bar utility for moving windows by holding a modifier key"
  homepage "https://github.com/ihsur7/grabber"

  depends_on macos: ">= :sonoma"

  app "Grabber.app"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  zap trash: [
    "~/Library/Preferences/com.ihsur.grabber.plist",
    "~/Library/Saved Application State/com.ihsur.grabber.savedState",
  ]
end
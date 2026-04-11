cask "grabber" do
  version "1.0.26"
  sha256 "1367406833f66f60e8abd10a26da62ddf13c4f6fa421be8052c67c67cbe43c55"

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
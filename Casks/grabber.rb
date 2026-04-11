cask "grabber" do
  version "1.0.22"
  sha256 "c32bd92bdbe235c750f228e61e25a48cd0b1ca268c9e3a9c7ca7f92301954611"

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
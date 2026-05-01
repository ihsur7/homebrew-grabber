cask "grabber" do
  version "1.0.29"
  sha256 "2cdeab93b635a266d8c12419b505a310323c57aefd39fae900d959b5c30110db"

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
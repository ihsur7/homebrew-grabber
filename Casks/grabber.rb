cask "grabber" do
  version "1.0.25"
  sha256 "e9bcb1c85247ce4c16b1a9dca70484c62c379e7ffcdaf7cbc0d26be639b01e9d"

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
cask "zwork" do
  version "0.6.1"
  sha256 "957ae81ad2898fc1a6170ec187be55548be3f32e28558cccd6d858e80507ab40"

  url "https://github.com/Ryz3nPlayZ/zWork/releases/download/v#{version}/zWork-macos-universal.dmg",
      verified: "github.com/Ryz3nPlayZ/zWork/"
  name "zWork"
  desc "Desktop AI agent that runs on your schedule and works across your apps"
  homepage "https://github.com/Ryz3nPlayZ/zWork"

  livecheck do
    url "https://github.com/Ryz3nPlayZ/zWork/releases"
    strategy :github_latest
  end

  app "zWork.app"

  zap trash: [
    "~/.zwork",
    "~/Library/Application Support/zWork",
    "~/Library/Caches/com.zwork.desktop",
    "~/Library/WebKit/com.zwork.desktop",
    "~/Library/Logs/zWork",
    "~/Library/Preferences/com.zwork.desktop.plist",
    "~/Library/Saved Application State/com.zwork.desktop.savedState",
  ]
end

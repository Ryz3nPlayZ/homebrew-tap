cask "zwork" do
  version "0.7.1"
  sha256 "0ee5dfe9c9d31e82f25ccabda22acda7820d4fe7dd00eb5292a545844918d743"

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

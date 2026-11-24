cask "zwork" do
  version "0.7.0"
  sha256 "2813b211988390a1ae4ed03391f9e68ecc0d3e116f4e54422e464fffcbf0dc82"

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

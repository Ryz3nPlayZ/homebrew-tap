cask "zwork" do
  version "0.5.2"
  sha256 "58bcf668614ffebb5dd441f4053c35523bdf0d62a788c1bd451785e933e18147"

  url "https://github.com/Ryz3nPlayZ/zWork/releases/download/v#{version}/zWork-macos-universal.dmg",
      verified: "github.com/Ryz3nPlayZ/zWork/"
  name "zWork"
  desc "Desktop AI agent that runs on your schedule and works across your apps"
  homepage "https://github.com/Ryz3nPlayZ/zWork"

  livecheck do
    url "https://github.com/Ryz3nPlayZ/zWork/releases"
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"
  depends_on arch: :universal

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

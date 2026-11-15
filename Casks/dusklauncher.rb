cask "dusklauncher" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.26"
  sha256 arm:   "0fbff4a2f3ac5ecd0dbe0747c3ebcd84ba690f5ba4e4c40bbb9fc0a77a4b3300",
         intel: "8f1ef5e49707adc13bb77b21ebf73118f3c109149c315f8d47bb16fbad1719db"

  url "https://github.com/ryz3nplayz/dusklauncher/releases/download/v#{version}/DuskLauncher_#{version}_#{arch}.dmg"
  name "DuskLauncher"
  desc "Minecraft launcher with the Dusk client built in"
  homepage "https://github.com/ryz3nplayz/dusklauncher"

  livecheck do
    url :url
    strategy :github_latest
  end

  # The launcher updates itself (Tauri updater against latest.json), so
  # `brew upgrade` leaves it alone unless run with --greedy.
  auto_updates true
  depends_on macos: :big_sur

  app "DuskLauncher.app"

  # Not Apple-notarized (yet), so drop the quarantine flag Homebrew puts on
  # the download — otherwise Gatekeeper refuses the first launch. Homebrew
  # removed --no-quarantine in 7.0, so the cask has to do it.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/DuskLauncher.app"],
                          writable_paths: ["DuskLauncher.app"], writable_base: :appdir
  end

  zap trash: [
    # app data dir (dirs::data_dir()/FasterLauncher — see appstate.rs), not
    # the bundle id; Caches/WebKit below ARE keyed by the bundle id.
    "~/Library/Application Support/FasterLauncher",
    "~/Library/Caches/app.tryzwork.dusklauncher",
    "~/Library/WebKit/app.tryzwork.dusklauncher",
  ]
end

cask "dusklauncher" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.12"
  sha256 arm:   "cf5d447f33a4eaa1782839295c4d2684f83c0ddd1481538ae92a790ae1db3c97",
         intel: "b72c7369aa704d158dd2391010c0eefe558f4dff95b83aaf07c8cf4529cd4aaf"

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

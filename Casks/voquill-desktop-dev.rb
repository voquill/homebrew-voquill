cask "voquill-desktop-dev" do
  version "0.0.629"
  sha256 "6f9d1cc9e980a015da332487c0efa7063eaef4a63cddd57849aa314ae1c8d2c8"

  url "https://github.com/voquill/voquill/releases/download/desktop-dev-v#{version}/VoquillDev_#{version}_universal.dmg"
  name "Voquill (dev)"
  desc "AI-powered dictation desktop application"
  homepage "https://voquill.com"

  depends_on macos: ">= :ventura"

  app "Voquill (dev).app"

  zap trash: [
    "~/Library/Application Support/com.voquill.desktop",
    "~/Library/Caches/com.voquill.desktop",
    "~/Library/Preferences/com.voquill.desktop.plist",
    "~/Library/Saved Application State/com.voquill.desktop.savedState",
  ]
end

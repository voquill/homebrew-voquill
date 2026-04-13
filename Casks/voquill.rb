cask "voquill" do
  version "0.0.592"
  sha256 "a74889903ab9556a533355811a95db333655b8db28600d27d3a3ef91cf9609bb"

  url "https://github.com/voquill/voquill/releases/download/desktop-v#{version}/Voquill_#{version}_universal.dmg"
  name "Voquill"
  desc "AI-powered dictation desktop application"
  homepage "https://voquill.com"

  depends_on macos: ">= :ventura"

  app "Voquill.app"

  zap trash: [
    "~/Library/Application Support/com.voquill.desktop",
    "~/Library/Caches/com.voquill.desktop",
    "~/Library/Preferences/com.voquill.desktop.plist",
    "~/Library/Saved Application State/com.voquill.desktop.savedState",
  ]
end

cask "voquill-desktop-dev" do
  version "0.0.656"
  sha256 "bc83c9d32ca74bc04ada393122f83af5d114cd11d881379cbbe4c905bc8e1055"

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

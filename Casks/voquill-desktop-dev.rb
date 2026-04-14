cask "voquill-desktop-dev" do
  version "0.0.596"
  sha256 "41032028e35454ae770df34e01b65f5a1545193a84c201458f84f9a20dfce6f7"

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

cask "voquill-dev" do
  version "0.0.501"
  sha256 "69b3050c6ccd56c2952d1e8d3fbace538788f7b7fcea1ca267bcaa4de3a07b3e"

  url "https://github.com/voquill/voquill/releases/download/desktop-dev-v#{version}/Voquill.dev._#{version}_universal.dmg"
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

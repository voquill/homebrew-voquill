cask "voquill" do
  version "0.0.534"
  sha256 "c08d98ec88a437e6773fb4256bb198beb6e098fb60dc628ea54b0dc93e95ba1a"

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

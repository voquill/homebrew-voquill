cask "voquill" do
  version "0.0.520"
  sha256 "2fa9d4ea590b47dfe089e37f10e4b497166d645f2610671be2f4f99103971097"

  url "https://github.com/josiahsrc/voquill/releases/download/desktop-v#{version}/Voquill_#{version}_universal.dmg"
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

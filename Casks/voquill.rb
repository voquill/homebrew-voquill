cask "voquill" do
  version "0.0.545"
  sha256 "3a741be7392928113b425bbde63f2efecc24485838e3b50450cb35ee48db75d4"

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

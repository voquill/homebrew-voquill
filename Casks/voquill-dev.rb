cask "voquill-dev" do
  version "0.0.577"
  sha256 "97af5128f69b61f32304c7b4e96f810a31b26c9dce9f34a2e1d6dd1a5ee5f3e8"

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

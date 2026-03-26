cask "voquill-dev" do
  version "0.0.527"
  sha256 "1835757b6176e043bb40fc44ef0b51c3d53e7f3071d5a5c6dbb16bf9fcc26e99"

  url "https://github.com/josiahsrc/voquill/releases/download/desktop-dev-v#{version}/Voquill.dev._#{version}_universal.dmg"
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

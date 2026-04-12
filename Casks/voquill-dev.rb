cask "voquill-dev" do
  version "0.0.585"
  sha256 "f6d05e5fe3770a9d473f48e16d4cb64d70e75f2f315dfbea29c0bd1aa732a85d"

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

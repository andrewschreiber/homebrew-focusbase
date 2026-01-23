cask "focusbase" do
  version "2.6.8"
  sha256 "3458510b829bf8721ffa236773a901d85afae0d6430aada8462925654bb54a26"

  url "https://github.com/andrewschreiber/dozy-releases/releases/download/v#{version}/Focusbase-#{version}-arm64.dmg",
      verified: "github.com/andrewschreiber/dozy-releases/"
  name "Focusbase"
  desc "The universal progress notifier"
  homepage "https://focusbase.com"

  depends_on macos: ">= :catalina"

  app "Focusbase.app"

  zap trash: [
    "~/.focusbase",
    "~/Library/Application Support/focusbase",
    "~/Library/Preferences/ai.topsecret.Topsecret.plist",
    "~/Library/Caches/ai.topsecret.Topsecret",
  ]
end

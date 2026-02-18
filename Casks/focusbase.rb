cask "focusbase" do
  version "2.7.4"
  sha256 "c5ab8bc69247c8971bb27b415ba34c163b6c4fa885c60111248b40929e52005c"

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

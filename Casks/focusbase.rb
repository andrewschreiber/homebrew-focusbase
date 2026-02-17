cask "focusbase" do
  version "2.7.2"
  sha256 "5d7e38690121a944fa6cd18f6cd13ee82fcb96960c2d8e980b13dbe522993a9d"

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

cask "focusbase" do
  version "2.8.4"
  sha256 "6793a98c29f55d000a94a0a40fe2e9da3d3655e9a20a3d7ea3e05ae4f08ce8d0"

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

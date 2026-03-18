cask "focusbase" do
  version "2.8.6"
  sha256 "73ae73260ac7693b541812f0e8004b6fc2baa111c9fd1b783ab812167bd6dea2"

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

cask "bassjump-revived" do
  version "5.2"
  sha256 "ca23c6560b8cbc4e50ff14789e4526af896a17095e34c7f5f11c2b4758cfaf5e"

  url "https://github.com/09kleinkd/BassJumpRevived/releases/download/v#{version}/BassJump-#{version}.zip"
  name "BassJump Revived"
  desc "Menu bar app that drives the Twelve South BassJump 2 subwoofer"
  homepage "https://github.com/09kleinkd/BassJumpRevived"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "BassJump.app"

  uninstall quit: "local.bassjump.revived"

  zap trash: [
    "~/Library/Caches/local.bassjump.revived",
    "~/Library/HTTPStorages/local.bassjump.revived",
    "~/Library/Preferences/local.bassjump.revived.plist",
  ]
end

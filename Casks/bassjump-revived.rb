cask "bassjump-revived" do
  version "5.1"
  sha256 "cd655ad0d3d613fece4289082a74e99bcb5d140603e90e1330149af3fd19ba5b"

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

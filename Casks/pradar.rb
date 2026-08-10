cask "pradar" do
  version "1.0.0"
  sha256 "7d4b055c9b17de1f67d87ea5356f4e3c1f14e5e3736665f9a77d801525cccfe0"

  url "https://github.com/GuzzoLM/pr-radar/releases/download/v#{version}/PRadar-#{version}.dmg"
  name "PRadar"
  desc "Menu bar app for monitoring GitHub pull requests"
  homepage "https://github.com/GuzzoLM/pr-radar"

  depends_on macos: ">= :ventura"
  depends_on formula: "gh"

  app "PRadar.app"

  zap trash: "~/Library/Preferences/com.guzzolm.pradar.plist"
end

cask "donna" do
  version "0.1.1"
  sha256 "c6ce948877fad3addbe20de5755ddd14940279376d0af8394521a2aaaba441a2"

  url "https://raw.githubusercontent.com/GuzzoLM/donna-releases/v#{version}/Donna-#{version}-macos-arm64.zip"
  name "Donna"
  desc "Personal mission control for work"
  homepage "https://github.com/GuzzoLM/donna"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Donna.app"

  zap trash: [
    "~/Library/Application Support/Donna",
    "~/Library/Preferences/com.guzzolm.donna.plist",
  ]

  caveats <<~EOS
    This early Donna build is not Apple-notarized. macOS may block its first launch.
    If you trust this release, allow it in System Settings > Privacy & Security.
  EOS
end

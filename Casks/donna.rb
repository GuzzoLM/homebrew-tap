cask "donna" do
  version "0.1.0"
  sha256 "3ff00f40d1c41caadd577b60f4535fa421ddacc1f2d2fbba5aa7450dbed131da"

  url "https://github.com/GuzzoLM/donna/releases/download/v#{version}/Donna-#{version}-macos-arm64.zip"
  name "Donna"
  desc "Personal mission control for work"
  homepage "https://github.com/GuzzoLM/donna"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

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

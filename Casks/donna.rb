cask "donna" do
  version "0.1.2"
  sha256 "e929d8e22040c99086e7dc22e3313f5018b7fe579ed8ddc6c03a5f90cf031b71"

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

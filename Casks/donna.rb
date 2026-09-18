cask "donna" do
  version "0.1.4"
  sha256 "19094f52cd6c73b10b2cc90744d23b8c7be02d81d56f01e0909f8e692b430ca1"

  url "https://raw.githubusercontent.com/GuzzoLM/donna-releases/v#{version}/Donna-#{version}-macos-arm64.zip"
  name "Donna"
  desc "Personal mission control for work"
  homepage "https://github.com/GuzzoLM/donna"

  depends_on arch: :arm64
  depends_on macos: :ventura
  depends_on formula: "gh"

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

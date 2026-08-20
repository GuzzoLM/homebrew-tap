cask "alarm-radar" do
  version "0.1.0"
  sha256 "2cff551e6375467cabffe4bf5fe5a00f2a0b6e8f6a741643e58a1da76efa94a1"

  url "https://github.com/GuzzoLM/alarm-radar/releases/download/v#{version}/AlarmRadar-#{version}.dmg"
  name "Alarm Radar"
  desc "Menu bar app for monitoring Grafana alerts"
  homepage "https://github.com/GuzzoLM/alarm-radar"

  depends_on macos: ">= :ventura"

  app "AlarmRadar.app"

  zap trash: "~/Library/Preferences/dev.guzzolm.alarm-radar.plist"
end

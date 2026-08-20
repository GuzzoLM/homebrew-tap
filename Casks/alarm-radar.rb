cask "alarm-radar" do
  version "0.1.1"
  sha256 "2875225683a6b40acfb16f885a8b6c752793a3acdf15423222e1980ce510370c"

  url "https://github.com/GuzzoLM/alarm-radar/releases/download/v#{version}/AlarmRadar-#{version}.dmg"
  name "Alarm Radar"
  desc "Menu bar app for monitoring Grafana alerts"
  homepage "https://github.com/GuzzoLM/alarm-radar"

  depends_on macos: ">= :ventura"

  app "AlarmRadar.app"

  zap trash: "~/Library/Preferences/dev.guzzolm.alarm-radar.plist"
end

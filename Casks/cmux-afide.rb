cask "cmux-afide" do
  version "1.0.9"
  sha256 "192f2cd7c320cd73dfb08d76318f9dcf766ec8115841aaaa7fa9b63d4d119dbf"

  url "https://github.com/takashi11171117/cmux/releases/download/v#{version}/cmux-afide-macos.dmg"
  name "cmux AFIDE"
  desc "Agent-first IDE fork of cmux, with a dedicated code-review column"
  homepage "https://github.com/takashi11171117/cmux"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "cmux AFIDE.app"
  binary "#{appdir}/cmux AFIDE.app/Contents/Resources/bin/cmux", target: "cmux-afide"

  zap trash: [
    "~/Library/Application Support/com.cmuxterm.app.afide",
    "~/Library/Caches/com.cmuxterm.app.afide",
    "~/Library/HTTPStorages/com.cmuxterm.app.afide",
    "~/Library/Preferences/com.cmuxterm.app.afide.plist",
    "~/Library/WebKit/com.cmuxterm.app.afide",
  ]
end

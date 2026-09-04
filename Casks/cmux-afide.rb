cask "cmux-afide" do
  version "1.0.10"
  sha256 "52b79ebd3f61148ca268ca1fbca849dd372fcccc2cf212a3358400ea909996c1"

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

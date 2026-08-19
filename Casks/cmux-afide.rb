cask "cmux-afide" do
  version "1.0.3"
  sha256 "102839636129afb7a38a26d323c2a7b3058a1ed5a23a367c39f259f868a2d157"

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

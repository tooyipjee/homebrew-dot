cask "dot" do
  version "1.0.3"
  sha256 "4b4c3713abdd7a0e0a3b0a566c63fb9395c924440866865aeb8f0450acae3eb9"

  url "https://github.com/tooyipjee/dot/releases/download/v#{version}/dot_#{version}_aarch64.dmg"
  name "dot"
  desc "A cute Tamagotchi pet that lives in your menu bar"
  homepage "https://github.com/tooyipjee/dot"

  depends_on macos: ">= :catalina"

  app "dot.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/dot.app"],
                   sudo: false
  end
end

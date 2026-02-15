cask "dot" do
  version "1.0.2"
  sha256 "7c012ff72c79ea32b156ec61ef4f54a67302f3d0ce8a6cc59d0d438f09c18d8e"

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

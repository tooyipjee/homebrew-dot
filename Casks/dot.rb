cask "dot" do
  version "1.0.0"
  sha256 "a04629e349f730724654c3c675584e2edbdb8f3c637b4918087aed5f1c22aed6"

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

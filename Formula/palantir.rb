class Palantir < Formula
  desc "Live wallpapers for macOS — native, lightweight, no third-party apps"
  homepage "https://github.com/monkfrodo/palantir"
  url "https://github.com/monkfrodo/palantir.git", tag: "v1.0"
  license "MIT"

  depends_on :macos

  def install
    prefix.install "install.sh", "uninstall.sh", "src", "screensaver"
  end

  def post_install
    system "bash", "#{prefix}/install.sh"
  end

  def caveats
    <<~EOS
      Palantir installed! Look for the TV icon in your menu bar.

      Wallpapers: ~/.palantir/wallpapers/
      Uninstall:  brew uninstall palantir
    EOS
  end
end

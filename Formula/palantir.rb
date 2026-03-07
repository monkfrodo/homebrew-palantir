class Palantir < Formula
  desc "Live wallpapers for macOS — native, lightweight, no third-party apps"
  homepage "https://github.com/monkfrodo/palantir"
  url "https://github.com/monkfrodo/palantir.git", tag: "v1.0"
  license "MIT"

  depends_on :macos
  depends_on :xcode => ["14.0", :build]

  def install
    # Compile the main binary
    system "swiftc", "-o", "Palantir", "-parse-as-library", "src/App.swift",
           "-framework", "AppKit", "-framework", "AVFoundation",
           "-framework", "CoreMedia", "-framework", "SwiftUI",
           "-framework", "CoreGraphics"

    bin.install "Palantir"
    prefix.install "install.sh", "uninstall.sh", "src", "screensaver"
  end

  def post_install
    system "#{prefix}/install.sh"
  end

  def caveats
    <<~EOS
      Palantir foi instalado! Procura o icone de TV na barra de menu.

      Wallpapers: ~/.palantir/wallpapers/
      Desinstalar: brew uninstall palantir
    EOS
  end
end

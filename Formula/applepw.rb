class Applepw < Formula
  desc "🔑 a CLI for Apple Passwords 🔒"
  homepage "https://github.com/alecharmon/applepw"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/alecharmon/applepw/releases/download/v#{version}/applepw-x86_64-apple-darwin.tar.gz"
      sha256 "28ef4af359157585de3b55d6c4ecb0107d14719d8985a66b18e07686388f5da3"
    end
    if Hardware::CPU.arm?
      url "https://github.com/alecharmon/applepw/releases/download/v#{version}/applepw-aarch64-apple-darwin.tar.gz"
      sha256 "606946fc78220a3a4b62416f803d2538a7b665bb857967a555b0a10865bc4e2d"
    end
  end

  def install
    bin.install "applepw"
  end

  test do
    system "#{bin}/applepw", "--version"
  end
end

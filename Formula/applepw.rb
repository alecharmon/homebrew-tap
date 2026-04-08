class Applepw < Formula
  desc "🔑 a CLI for Apple Passwords 🔒"
  homepage "https://github.com/alecharmon/applepw"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/alecharmon/applepw/releases/download/v#{version}/applepw-x86_64-apple-darwin.tar.gz"
      sha256 "REPLACE_WITH_X86_SHA256"
    end
    if Hardware::CPU.arm?
      url "https://github.com/alecharmon/applepw/releases/download/v#{version}/applepw-aarch64-apple-darwin.tar.gz"
      sha256 "REPLACE_WITH_AARCH64_SHA256"
    end
  end

  def install
    bin.install "applepw"
  end

  test do
    system "#{bin}/applepw", "--version"
  end
end

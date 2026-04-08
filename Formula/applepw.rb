class Applepw < Formula
  desc "🔑 a CLI for Apple Passwords 🔒"
  homepage "https://github.com/alecharmon/applepw"
  version "0.1.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/alecharmon/applepw/releases/download/v#{version}/applepw-x86_64-apple-darwin.tar.gz"
      sha256 "9ac6578c71690a875d3f624f48d2974fd226a7408cf634f03a27abb528eede00"
    end
    if Hardware::CPU.arm?
      url "https://github.com/alecharmon/applepw/releases/download/v#{version}/applepw-aarch64-apple-darwin.tar.gz"
      sha256 "0de345c150e287600670e53e248ab256b458d76df12c1b48176e46a19a6ee403"
    end
  end

  def install
    bin.install "applepw"
  end

  test do
    system "#{bin}/applepw", "--version"
  end
end

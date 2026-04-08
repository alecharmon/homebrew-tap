class Applepw < Formula
  desc "🔑 a CLI for Apple Passwords 🔒"
  homepage "https://github.com/alecharmon/applepw"
  version "0.1.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/alecharmon/applepw/releases/download/v#{version}/applepw-x86_64-apple-darwin.tar.gz"
      sha256 "490805f01e0c9ab535cc1461096792af797f1736f4dde02b4a9cae6596c625dd"
    end
    if Hardware::CPU.arm?
      url "https://github.com/alecharmon/applepw/releases/download/v#{version}/applepw-aarch64-apple-darwin.tar.gz"
      sha256 "3b0f35317681e828282fe74d1bd8a63423cdfd83ab2de969ac15e2e9dc876026"
    end
  end

  def install
    bin.install "applepw"
  end

  test do
    system "#{bin}/applepw", "--version"
  end
end

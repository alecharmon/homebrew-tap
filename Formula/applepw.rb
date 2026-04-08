class Applepw < Formula
  desc "🔑 a CLI for Apple Passwords 🔒"
  homepage "https://github.com/alecharmon/applepw"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/alecharmon/applepw/releases/download/v#{version}/applepw-x86_64-apple-darwin.tar.gz"
      sha256 "98e1fd15d91a00d36425f529d5255a1e2f329d18c16da836dfdeab1f67c59317"
    end
    if Hardware::CPU.arm?
      url "https://github.com/alecharmon/applepw/releases/download/v#{version}/applepw-aarch64-apple-darwin.tar.gz"
      sha256 "0ec484d1de76ed22cfd59d930d39ed9e8c44495d7b39ff329b02bc6ffc322302"
    end
  end

  def install
    bin.install "applepw"
  end

  test do
    system "#{bin}/applepw", "--version"
  end
end

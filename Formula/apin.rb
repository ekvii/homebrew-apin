class Apin < Formula
  desc "Terminal UI for navigating OpenAPI specs — fast, keyboard-driven, zero configuration"
  homepage "https://github.com/ekvii/apin"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ekvii/apin/releases/download/v0.2.1/apin-v0.2.1-macos-arm64"
      sha256 "c96f6b6c0b8bd9b9ad715f58f6b6ddcf2e9e70aa5b6f9c5809c5663470d20906"
    end

    on_intel do
      url "https://github.com/ekvii/apin/releases/download/v0.2.1/apin-v0.2.1-macos-x86_64"
      sha256 "1461d3c29f8ec562a44cda9a1fa4960eebbb7ab1e2b4ebee9b2e0561bf43391e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ekvii/apin/releases/download/v0.2.1/apin-v0.2.1-linux-arm64"
      sha256 "29c6d5f45a93b2845397d2421d5b222f42623c398c9175cc28f5e4cdf310fc6f"
    end

    on_intel do
      url "https://github.com/ekvii/apin/releases/download/v0.2.1/apin-v0.2.1-linux-x86_64"
      sha256 "d9f7c7802fd3befa63727a0f7b3f0ebb153c3719623c9e0e9efd52020a904b75"
    end
  end

  def install
    bin.install Dir["apin*"].first => "apin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/apin --version 2>&1", 0)
  end
end

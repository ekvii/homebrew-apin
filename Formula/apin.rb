class Apin < Formula
  desc "Terminal UI for navigating OpenAPI specs — fast, keyboard-driven, zero configuration"
  homepage "https://github.com/ekvii/apin"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ekvii/apin/releases/download/v0.4.1/apin-v0.4.1-macos-arm64"
      sha256 "a2345af4c2aef2e721e36dc01e24716626988454e691972192ace56b913c3e1a"
    end

    on_intel do
      url "https://github.com/ekvii/apin/releases/download/v0.4.1/apin-v0.4.1-macos-x86_64"
      sha256 "e5f66f53ef8e991e8b4afa4f447c074fc6683b2904c2da531382b9bef4579786"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ekvii/apin/releases/download/v0.4.1/apin-v0.4.1-linux-arm64"
      sha256 "ab872de26d83ad00df56173ceeb5c9b8868a4f7bf9b3bef39f21100e8e6d2761"
    end

    on_intel do
      url "https://github.com/ekvii/apin/releases/download/v0.4.1/apin-v0.4.1-linux-x86_64"
      sha256 "ae35848ad41d51de3c0bacc1dcd81265a7964d120cf51fa76c8c68c7cc4dac83"
    end
  end

  def install
    bin.install Dir["apin*"].first => "apin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/apin --version 2>&1", 0)
  end
end

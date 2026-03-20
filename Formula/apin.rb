class Apin < Formula
  desc "Terminal UI for navigating OpenAPI specs — fast, keyboard-driven, zero configuration"
  homepage "https://github.com/ekvii/apin"
  version "0.4.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ekvii/apin/releases/download/v0.4.8/apin-v0.4.8-macos-arm64"
      sha256 "fbf4bed9daa64f8129a4d884b9d505c2d285262e2d67c9036833b22288a3f4ba"
    end

    on_intel do
      url "https://github.com/ekvii/apin/releases/download/v0.4.8/apin-v0.4.8-macos-x86_64"
      sha256 "9ab512630d16a89f8adacf46697f77d29bc3e94e7139da475f567662d7146831"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ekvii/apin/releases/download/v0.4.8/apin-v0.4.8-linux-arm64"
      sha256 "0dbbe722273c51525d52a36411949a88a3893dd72dc837bfb7e3ff484fedc6f6"
    end

    on_intel do
      url "https://github.com/ekvii/apin/releases/download/v0.4.8/apin-v0.4.8-linux-x86_64"
      sha256 "77e4176d603738ac1e4319f25c2bd21ea7c9b307e67d7fe05c07d58db128b74b"
    end
  end

  def install
    bin.install Dir["apin*"].first => "apin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/apin --version 2>&1", 0)
  end
end

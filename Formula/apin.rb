class Apin < Formula
  desc "Terminal UI for navigating OpenAPI specs — fast, keyboard-driven, zero configuration"
  homepage "https://github.com/ekvii/apin"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ekvii/apin/releases/download/v0.1.3/apin-v0.1.3-macos-arm64"
      sha256 "84a20368c4feab7e7ad7fa4e85b02ad1886b97945ce8f72164184ff0be5fbc5c"
    end

    on_intel do
      url "https://github.com/ekvii/apin/releases/download/v0.1.3/apin-v0.1.3-macos-x86_64"
      sha256 "eaa416311529f3d8c7254ddb97ea11f6020683cc9f58396d96bc65b17c876490"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ekvii/apin/releases/download/v0.1.3/apin-v0.1.3-linux-arm64"
      sha256 "9332e72365506e64d8b54ceeae15e1498637b43964b53e6bb5935b1147a794b0"
    end

    on_intel do
      url "https://github.com/ekvii/apin/releases/download/v0.1.3/apin-v0.1.3-linux-x86_64"
      sha256 "5d9ec5c5564ceac0759c6692617bec8fd2fddd298fded3623495f6e719d06fe4"
    end
  end

  def install
    bin.install Dir["apin*"].first => "apin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/apin --version 2>&1", 0)
  end
end

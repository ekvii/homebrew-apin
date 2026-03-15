class Apin < Formula
  desc "Terminal UI for navigating OpenAPI specs — fast, keyboard-driven, zero configuration"
  homepage "https://github.com/ekvii/apin"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ekvii/apin/releases/download/v0.2.2/apin-v0.2.2-macos-arm64"
      sha256 "d000ed87479281cca57d438085bd20756b9fc288b81a41056f13d1cd42156839"
    end

    on_intel do
      url "https://github.com/ekvii/apin/releases/download/v0.2.2/apin-v0.2.2-macos-x86_64"
      sha256 "6f70dfecb879d8ae9eddfdc1a4f8a8d47fee36fc521cd48d2e527ddf11d66602"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ekvii/apin/releases/download/v0.2.2/apin-v0.2.2-linux-arm64"
      sha256 "c659968f3cd08911c4d87e1103cae10dead872c7672b4cfd4ff297f22b1cee1b"
    end

    on_intel do
      url "https://github.com/ekvii/apin/releases/download/v0.2.2/apin-v0.2.2-linux-x86_64"
      sha256 "530f4b41fd9d1e22a859d1b776424d82fbf9b4f45312549c6702019abdb7d506"
    end
  end

  def install
    bin.install Dir["apin*"].first => "apin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/apin --version 2>&1", 0)
  end
end

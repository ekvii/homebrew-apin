class Apin < Formula
  desc "Terminal UI for navigating OpenAPI specs — fast, keyboard-driven, zero configuration"
  homepage "https://github.com/ekvii/apin"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ekvii/apin/releases/download/v0.1.4/apin-v0.1.4-macos-arm64"
      sha256 "d53711a14e9b971d2c6e9d5c17884292ee13fcf59cf5c4641340989e0c10ece3"
    end

    on_intel do
      url "https://github.com/ekvii/apin/releases/download/v0.1.4/apin-v0.1.4-macos-x86_64"
      sha256 "c878f2a94fd720136769afd5a81c8598052939a15459deea92a441f83a881ef0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ekvii/apin/releases/download/v0.1.4/apin-v0.1.4-linux-arm64"
      sha256 "4f44ef2333bfa345ae0e1d9432b1e62234d9fbdfb50a7eb0b1b64a9271511396"
    end

    on_intel do
      url "https://github.com/ekvii/apin/releases/download/v0.1.4/apin-v0.1.4-linux-x86_64"
      sha256 "980d0367f0513739d7cd901ed008fb5d77ab1866eee7d3ba12ef26c0a42295d3"
    end
  end

  def install
    bin.install Dir["apin*"].first => "apin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/apin --version 2>&1", 0)
  end
end

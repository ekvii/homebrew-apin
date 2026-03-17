class Apin < Formula
  desc "Terminal UI for navigating OpenAPI specs — fast, keyboard-driven, zero configuration"
  homepage "https://github.com/ekvii/apin"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ekvii/apin/releases/download/v0.3.0/apin-v0.3.0-macos-arm64"
      sha256 "29cb39d38477bb02a38c8860697caa00fb06b43d74bd453e1b3f83763603b556"
    end

    on_intel do
      url "https://github.com/ekvii/apin/releases/download/v0.3.0/apin-v0.3.0-macos-x86_64"
      sha256 "da956187a24cd849b6be8c866582b320e1622a23a39c1565a894192fe90171cc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ekvii/apin/releases/download/v0.3.0/apin-v0.3.0-linux-arm64"
      sha256 "cf2fdb7cc654e7470c289b8c65c066962271401aaa347656944c328811470168"
    end

    on_intel do
      url "https://github.com/ekvii/apin/releases/download/v0.3.0/apin-v0.3.0-linux-x86_64"
      sha256 "bf2090a238bbe6121dc4acd249d5d79731f9ef4d2ac29361fb645d96f151b12b"
    end
  end

  def install
    bin.install Dir["apin*"].first => "apin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/apin --version 2>&1", 0)
  end
end

class Apin < Formula
  desc "Terminal UI for navigating OpenAPI specs — fast, keyboard-driven, zero configuration"
  homepage "https://github.com/ekvii/apin"
  version "0.4.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ekvii/apin/releases/download/v0.4.13/apin-v0.4.13-macos-arm64"
      sha256 "909e9fbdc6ea4c36c2e1f6f69877b3e963941c7c979d6163f638a82a85e95c90"
    end

    on_intel do
      url "https://github.com/ekvii/apin/releases/download/v0.4.13/apin-v0.4.13-macos-x86_64"
      sha256 "6ec6c28baf8cd70d5ee6fa54c2f8d58850687b99514a85efd9f7b88c1fd47748"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ekvii/apin/releases/download/v0.4.13/apin-v0.4.13-linux-arm64"
      sha256 "8d9f5f38643f7a1dde9440ff5e18e6835a52b6134cee7bbdfa148d131478d3c2"
    end

    on_intel do
      url "https://github.com/ekvii/apin/releases/download/v0.4.13/apin-v0.4.13-linux-x86_64"
      sha256 "7be0c9abaf3c538ad8f4c63c653a3f785402025450afce32f74887f10aec1239"
    end
  end

  def install
    bin.install Dir["apin*"].first => "apin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/apin --version 2>&1", 0)
  end
end

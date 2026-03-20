class Apin < Formula
  desc "Terminal UI for navigating OpenAPI specs — fast, keyboard-driven, zero configuration"
  homepage "https://github.com/ekvii/apin"
  version "0.4.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ekvii/apin/releases/download/v0.4.11/apin-v0.4.11-macos-arm64"
      sha256 "6ab25aa5e7774e060777c4c3746980a66d3ebb7fa14a1bdf341c9c39ac672f1b"
    end

    on_intel do
      url "https://github.com/ekvii/apin/releases/download/v0.4.11/apin-v0.4.11-macos-x86_64"
      sha256 "6bb2256a5d74b976384ca275d3b190baf13024b81e8829f2c54c1fa8aa8ce489"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ekvii/apin/releases/download/v0.4.11/apin-v0.4.11-linux-arm64"
      sha256 "96d31be0853b4d50b53e6577297266dd71cf5fa8af745e4c89010b8bcf9849fe"
    end

    on_intel do
      url "https://github.com/ekvii/apin/releases/download/v0.4.11/apin-v0.4.11-linux-x86_64"
      sha256 "816362e229a23f0c605c843915f08f812f9c387da9e85395177be01c06755fc9"
    end
  end

  def install
    bin.install Dir["apin*"].first => "apin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/apin --version 2>&1", 0)
  end
end

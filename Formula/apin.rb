class Apin < Formula
  desc "Terminal UI for navigating OpenAPI specs — fast, keyboard-driven, zero configuration"
  homepage "https://github.com/ekvii/apin"
  version "0.4.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ekvii/apin/releases/download/v0.4.12/apin-v0.4.12-macos-arm64"
      sha256 "dc6e72ea32cb88c18f16ffcb2364ee8cd9c41fd0bb9221998fd086bd16ced06b"
    end

    on_intel do
      url "https://github.com/ekvii/apin/releases/download/v0.4.12/apin-v0.4.12-macos-x86_64"
      sha256 "db84ffa74e25054b135913854b5e8606714ec79f9328bcc42104ac5b7e406620"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ekvii/apin/releases/download/v0.4.12/apin-v0.4.12-linux-arm64"
      sha256 "73704a4daaed27d12b48f7916660a0ee26bb01a7022cd6a05d8b0cbcf8a8b980"
    end

    on_intel do
      url "https://github.com/ekvii/apin/releases/download/v0.4.12/apin-v0.4.12-linux-x86_64"
      sha256 "86307381f53efb9916fa272056173b7b7ed56b1e29ec8c18db93e1c86ccccfbd"
    end
  end

  def install
    bin.install Dir["apin*"].first => "apin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/apin --version 2>&1", 0)
  end
end

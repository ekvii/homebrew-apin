class Apin < Formula
  desc "Terminal UI for navigating OpenAPI specs — fast, keyboard-driven, zero configuration"
  homepage "https://github.com/ekvii/apin"
  version "0.4.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ekvii/apin/releases/download/v0.4.10/apin-v0.4.10-macos-arm64"
      sha256 "8f4b538825ec0f103d657c1e9af2aa75bf0c8fb0f5ec65d7bb5e72e6078ff92d"
    end

    on_intel do
      url "https://github.com/ekvii/apin/releases/download/v0.4.10/apin-v0.4.10-macos-x86_64"
      sha256 "054f7e9373d4354d3432d3ce74a0cfbfe3a8a668e4eb54e91c0430434c9cef94"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ekvii/apin/releases/download/v0.4.10/apin-v0.4.10-linux-arm64"
      sha256 "12b5923b38ceec5e6de850d43decb27714fdbba49d71fdb903184d3cd82dfe78"
    end

    on_intel do
      url "https://github.com/ekvii/apin/releases/download/v0.4.10/apin-v0.4.10-linux-x86_64"
      sha256 "f4dedc1fb272201509b5fcdebb7aa8328cff5678f7564631453a21cc892596f2"
    end
  end

  def install
    bin.install Dir["apin*"].first => "apin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/apin --version 2>&1", 0)
  end
end

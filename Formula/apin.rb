class Apin < Formula
  desc "Terminal UI for navigating OpenAPI specs — fast, keyboard-driven, zero configuration"
  homepage "https://github.com/ekvii/apin"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ekvii/apin/releases/download/v0.2.0/apin-v0.2.0-macos-arm64"
      sha256 "93e82de64df3010354eab0e34b693dbaa87d59337dbab77598c3ccff9ea589b9"
    end

    on_intel do
      url "https://github.com/ekvii/apin/releases/download/v0.2.0/apin-v0.2.0-macos-x86_64"
      sha256 "fe29da1bf97d795aa69fbde0a059189985510fd43096d75828d8c7073e8a9435"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ekvii/apin/releases/download/v0.2.0/apin-v0.2.0-linux-arm64"
      sha256 "396a1ed508f179427229bf0543472fc58c4cce5225bc8d1df66c60460ff6836e"
    end

    on_intel do
      url "https://github.com/ekvii/apin/releases/download/v0.2.0/apin-v0.2.0-linux-x86_64"
      sha256 "ceb3772a7d1b641dae900fa54120285a08806dcb2506512ba9d89267652b5e8a"
    end
  end

  def install
    bin.install Dir["apin*"].first => "apin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/apin --version 2>&1", 0)
  end
end

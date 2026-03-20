class Apin < Formula
  desc "Terminal UI for navigating OpenAPI specs — fast, keyboard-driven, zero configuration"
  homepage "https://github.com/ekvii/apin"
  version "0.4.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ekvii/apin/releases/download/v0.4.7/apin-v0.4.7-macos-arm64"
      sha256 "9be670334d51a5db8438cdb477ceb12fabff258f3af4376e495337c7ea473cf5"
    end

    on_intel do
      url "https://github.com/ekvii/apin/releases/download/v0.4.7/apin-v0.4.7-macos-x86_64"
      sha256 "369e1013b28433c16623e6d3830a1ffb038affe785246479f5b1514284dff080"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ekvii/apin/releases/download/v0.4.7/apin-v0.4.7-linux-arm64"
      sha256 "2e9b270ca663d18609945425887f844eb346f39d43a8306926ccd34bc689f93d"
    end

    on_intel do
      url "https://github.com/ekvii/apin/releases/download/v0.4.7/apin-v0.4.7-linux-x86_64"
      sha256 "4c4e5a002cd4071f040d26c29a676ab59543aafa1b94df6e196d8f3a397008e2"
    end
  end

  def install
    bin.install Dir["apin*"].first => "apin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/apin --version 2>&1", 0)
  end
end

class Apin < Formula
  desc "Terminal UI for navigating OpenAPI specs — fast, keyboard-driven, zero configuration"
  homepage "https://github.com/ekvii/apin"
  version "0.4.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ekvii/apin/releases/download/v0.4.14/apin-v0.4.14-macos-arm64"
      sha256 "818449ff4672316c1b027b470be06cce9d5679741c12d4a13cf03e53d1208407"
    end

    on_intel do
      url "https://github.com/ekvii/apin/releases/download/v0.4.14/apin-v0.4.14-macos-x86_64"
      sha256 "1eb5eb13fc1b4cde62e952d4974008f95ff454dfbb714927245dce536df8728d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ekvii/apin/releases/download/v0.4.14/apin-v0.4.14-linux-arm64"
      sha256 "c687c8d657c0d6f3633cfa2c4d02bcfc2b8e8b13c15d54f5e4b919446888646b"
    end

    on_intel do
      url "https://github.com/ekvii/apin/releases/download/v0.4.14/apin-v0.4.14-linux-x86_64"
      sha256 "e25f083ccf10ea70ace8edbd3ed409446528431ce0f704f8ec4b9b8102940582"
    end
  end

  def install
    bin.install Dir["apin*"].first => "apin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/apin --version 2>&1", 0)
  end
end

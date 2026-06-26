class Lumen < Formula
  desc "Dynamic, bytecode-compiled programming language with a full toolchain"
  homepage "https://github.com/fzlzjerry/lumen"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fzlzjerry/lumen/releases/download/v0.2.0/lumen-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "89825939930fb860d396f623e260f512402ee146445e6da24e990073d48ee572"
    end
    on_intel do
      url "https://github.com/fzlzjerry/lumen/releases/download/v0.2.0/lumen-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "1adeb2a0f4af063ac95d1eb99922b0ef05f14063d35f46d0c94d8abd9c5cb90f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fzlzjerry/lumen/releases/download/v0.2.0/lumen-0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "007639ae24704640d3cac927f4621be776926d454d26a3b466eaae289db8a116"
    end
    on_intel do
      url "https://github.com/fzlzjerry/lumen/releases/download/v0.2.0/lumen-0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "16311d40ac00852227ef877a809d8718d32b866fc297d7085c9edb9d1785ae63"
    end
  end

  def install
    bin.install "lumen"
  end

  test do
    assert_match "lumen", shell_output("#{bin}/lumen --version")
  end
end

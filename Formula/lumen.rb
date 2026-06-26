class Lumen < Formula
  desc "Dynamic, bytecode-compiled programming language with a full toolchain"
  homepage "https://github.com/fzlzjerry/lumen"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fzlzjerry/lumen/releases/download/v0.1.0/lumen-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "763ae3d3b1dc9c04ea39e06a8dae441fc512d540c6bbc341f1e185895239429d"
    end
    on_intel do
      url "https://github.com/fzlzjerry/lumen/releases/download/v0.1.0/lumen-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "72b3d4d4cf725388c33563c22a8117ab964e44cafe126ae33cb2f76bbb0e52f3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fzlzjerry/lumen/releases/download/v0.1.0/lumen-0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "42f0877fdae91ea5024f91988a1a20b9a9c261d2e9337d8950129341d5c0a504"
    end
    on_intel do
      url "https://github.com/fzlzjerry/lumen/releases/download/v0.1.0/lumen-0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "96a98ca060592da7aaddc9ac0d81058687a2f79d0b10fa268fbc335d2cb7f506"
    end
  end

  def install
    bin.install "lumen"
  end

  test do
    assert_match "lumen", shell_output("#{bin}/lumen --version")
  end
end

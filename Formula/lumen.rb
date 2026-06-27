class Lumen < Formula
  desc "Dynamic, bytecode-compiled programming language with a full toolchain"
  homepage "https://github.com/fzlzjerry/lumen"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fzlzjerry/lumen/releases/download/v0.4.0/lumen-0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "a5c5f46b9d5f5ab56a14e38c96b11a78d15bee7c9f22c7df922e485b44cfb9d4"
    end
    on_intel do
      url "https://github.com/fzlzjerry/lumen/releases/download/v0.4.0/lumen-0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "a55c5ed029abaaaa5d1034a26ee4f733f72b482357bd131644d43162e84bd0dd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fzlzjerry/lumen/releases/download/v0.4.0/lumen-0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "395603c9a7532f9da5874c099101a1cb43ed75a2b842338179cae75e66cf8de8"
    end
    on_intel do
      url "https://github.com/fzlzjerry/lumen/releases/download/v0.4.0/lumen-0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dcb67888a2948431f9dada16a33521d38a4679706b3eb1a43afa97a7ad5fc24b"
    end
  end

  def install
    bin.install "lumen"
  end

  test do
    assert_match "lumen", shell_output("#{bin}/lumen --version")
  end
end

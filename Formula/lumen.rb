class Lumen < Formula
  desc "Dynamic, bytecode-compiled programming language with a full toolchain"
  homepage "https://github.com/fzlzjerry/lumen"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fzlzjerry/lumen/releases/download/v0.5.0/lumen-0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "e5fd9dae1f8369b5166dcb4e196886436c967fa826e242e672fb04e167cfdfc3"
    end
    on_intel do
      url "https://github.com/fzlzjerry/lumen/releases/download/v0.5.0/lumen-0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "a7a53b0f283e6b7df749cd843b3642a579bd6cf57f42dc576a9af65836e61e85"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fzlzjerry/lumen/releases/download/v0.5.0/lumen-0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "89af7a2f0a024325745f0e752689d2113555994e1ed41f8c343bd891ab46b8e4"
    end
    on_intel do
      url "https://github.com/fzlzjerry/lumen/releases/download/v0.5.0/lumen-0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "de664b1b3ee74190d61a644c930f164bde5983b7f1e14af7ab2b43e00b17810d"
    end
  end

  def install
    bin.install "lumen"
  end

  test do
    assert_match "lumen", shell_output("#{bin}/lumen --version")
  end
end

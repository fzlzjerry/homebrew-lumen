class Lumen < Formula
  desc "Dynamic, bytecode-compiled programming language with a full toolchain"
  homepage "https://github.com/fzlzjerry/lumen"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fzlzjerry/lumen/releases/download/v0.3.0/lumen-0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "e0d3848a5eacee14257cd8d011703c45d1d80613fa68375e0e077c03eecc2d96"
    end
    on_intel do
      url "https://github.com/fzlzjerry/lumen/releases/download/v0.3.0/lumen-0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "05570207bffa015fc5353fd3a729c4d4cbbaf17340843c8bf90412a71f189a2f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fzlzjerry/lumen/releases/download/v0.3.0/lumen-0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "993be8681ce30dab3e3855d0beab4a7ad9c01d1dda112f03497c2d0a2fea4506"
    end
    on_intel do
      url "https://github.com/fzlzjerry/lumen/releases/download/v0.3.0/lumen-0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "895edb3930bf37174ae40797cd0873f222dbcef85fa5cae8f0c5514c5ebaf540"
    end
  end

  def install
    bin.install "lumen"
  end

  test do
    assert_match "lumen", shell_output("#{bin}/lumen --version")
  end
end

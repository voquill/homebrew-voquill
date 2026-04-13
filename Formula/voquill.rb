class Voquill < Formula
  desc "Voquill CLI"
  homepage "https://voquill.com"
  version "0.0.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/voquill/voquill/releases/download/cli-v0.0.8/voquill-aarch64-apple-darwin.tar.gz"
      sha256 "9156abfd082231abee0625368a40f8dc30a55aed3becb6f2db8c66fa2e162b69"
    else
      url "https://github.com/voquill/voquill/releases/download/cli-v0.0.8/voquill-x86_64-apple-darwin.tar.gz"
      sha256 "8f5ca82cbc2bc13ac12349b7fc600ab1a91298de4fa7a9fd56a6ecb3b211d4cf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/voquill/voquill/releases/download/cli-v0.0.8/voquill-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c43c1ae64bbb22e2fcb6f3f583650b54bfb7b91cd1977fb5ef226b49bbedd5db"
    else
      url "https://github.com/voquill/voquill/releases/download/cli-v0.0.8/voquill-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e9b086c73d2b7b5e0fd317252639a072a36f3e0c106cfde8e2246e1d5470e463"
    end
  end

  def install
    bin.install "voquill"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/voquill --version")
  end
end

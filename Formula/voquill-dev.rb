class VoquillDev < Formula
  desc "Voquill CLI (dev build, targets dev Firebase backend)"
  homepage "https://voquill.com"
  version "0.0.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/voquill/voquill/releases/download/cli-dev-v0.0.7/voquill-dev-aarch64-apple-darwin.tar.gz"
      sha256 "a355beb2f7e08dd86cbb303d0ba41ef3d0f6f9e6fa2dd2b963ae64fc028abecf"
    else
      url "https://github.com/voquill/voquill/releases/download/cli-dev-v0.0.7/voquill-dev-x86_64-apple-darwin.tar.gz"
      sha256 "c8aedcfcb7c515499bf25bef0ff42f57ccafbdbdb4f579a377e6af588de23807"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/voquill/voquill/releases/download/cli-dev-v0.0.7/voquill-dev-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f4122f4c754ae25ca7b26ca1138157946c8c33a196eb79cd72f9e71551237c54"
    else
      url "https://github.com/voquill/voquill/releases/download/cli-dev-v0.0.7/voquill-dev-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4dee104faa635d0ad322b66c0fd40966623bc77bf4634c5004e876ef5289103f"
    end
  end

  def install
    bin.install "voquill-dev"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/voquill-dev --version")
  end
end

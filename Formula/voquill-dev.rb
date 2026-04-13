class VoquillDev < Formula
  desc "Voquill CLI (dev build, targets dev Firebase backend)"
  homepage "https://voquill.com"
  version "0.0.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/voquill/voquill/releases/download/cli-dev-v0.0.6/voquill-dev-aarch64-apple-darwin.tar.gz"
      sha256 "214957989d93e1e5a00df9323f1ae5ce36005cf218493638918382035f7c22fd"
    else
      url "https://github.com/voquill/voquill/releases/download/cli-dev-v0.0.6/voquill-dev-x86_64-apple-darwin.tar.gz"
      sha256 "63da708b52c82fb2c5abbfe21db2f83ba29e1675eb8f328692262d5c426c8ded"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/voquill/voquill/releases/download/cli-dev-v0.0.6/voquill-dev-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0cb6f37c131002884146b134baaecf66cf8b95d969dbe8dc22ebd3e54bc9ea17"
    else
      url "https://github.com/voquill/voquill/releases/download/cli-dev-v0.0.6/voquill-dev-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "15d502c13270133b9e8c38a5da7558dc7cf029268c283c47bbb8798444d5f11a"
    end
  end

  def install
    bin.install "voquill-dev"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/voquill-dev --version")
  end
end

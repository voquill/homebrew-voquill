class VoquillDev < Formula
  desc "Voquill CLI (dev build, targets dev Firebase backend)"
  homepage "https://voquill.com"
  version "0.0.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/voquill/voquill/releases/download/cli-dev-v0.0.8/voquill-dev-aarch64-apple-darwin.tar.gz"
      sha256 "c02580ee88021c71151ce9184714a09bb854f288da6e8f589c5a15e9c4ea73cc"
    else
      url "https://github.com/voquill/voquill/releases/download/cli-dev-v0.0.8/voquill-dev-x86_64-apple-darwin.tar.gz"
      sha256 "016499fbd4bb7b62b9f5b1493fd55b82cc5977b36a02fe523683a291f0c4f823"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/voquill/voquill/releases/download/cli-dev-v0.0.8/voquill-dev-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "24fc89cf4abc0a537f9e62d7754972289e48538ff16c602d5117dbb13a874e0c"
    else
      url "https://github.com/voquill/voquill/releases/download/cli-dev-v0.0.8/voquill-dev-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "23350d4fc701440f3f489e17edf60e7b8c4a6db3ab7f7921b975f74f85335668"
    end
  end

  def install
    bin.install "voquill-dev"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/voquill-dev --version")
  end
end

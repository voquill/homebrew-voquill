class VoquillDev < Formula
  desc "Voquill CLI (dev build, targets dev Firebase backend)"
  homepage "https://voquill.com"
  version "0.0.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/voquill/voquill/releases/download/cli-dev-v0.0.4/voquill-dev-aarch64-apple-darwin.tar.gz"
      sha256 "984707f3ff7cd4c6e3ade78078a9e694e70b2e2c42aca922ef5b14f890d91fa9"
    else
      url "https://github.com/voquill/voquill/releases/download/cli-dev-v0.0.4/voquill-dev-x86_64-apple-darwin.tar.gz"
      sha256 "b9f9177fb322df004905f973cc6214c6145322834db019b0d5f8b81b241f18aa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/voquill/voquill/releases/download/cli-dev-v0.0.4/voquill-dev-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "95a1f86a8e655f384fd9456929d97c2d79a382dd19dcf5eacc2071a2e04f5ae8"
    else
      url "https://github.com/voquill/voquill/releases/download/cli-dev-v0.0.4/voquill-dev-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8ccb84dbc325c0a304d2e32f0db93147a870dac1b6ffee357dd74bda6865476d"
    end
  end

  def install
    bin.install "voquill-dev"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/voquill-dev --version")
  end
end

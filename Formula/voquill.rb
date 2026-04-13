class Voquill < Formula
  desc "Voquill CLI"
  homepage "https://voquill.com"
  version "0.0.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/voquill/voquill/releases/download/cli-v0.0.6/voquill-aarch64-apple-darwin.tar.gz"
      sha256 "3a504b813373dca43e517bb979a8243b8f8468c3f5e62821dc0e1d69b2fcc0bc"
    else
      url "https://github.com/voquill/voquill/releases/download/cli-v0.0.6/voquill-x86_64-apple-darwin.tar.gz"
      sha256 "1d6147a1122d3656c07c463b6a9b726d6e1bd0bbf738be5b43530ff745d2a99c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/voquill/voquill/releases/download/cli-v0.0.6/voquill-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0310fd47d4e182b4d09eaf90471b980a61c9c3f886bb98bf581cbcd8bf721d34"
    else
      url "https://github.com/voquill/voquill/releases/download/cli-v0.0.6/voquill-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "19df5ba59b1e7657a362f57344c1cb6fed1fe3c08742ad3a0fd1919682922fef"
    end
  end

  def install
    bin.install "voquill"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/voquill --version")
  end
end

class VoquillDev < Formula
  desc "Voquill CLI (dev build, targets dev Firebase backend)"
  homepage "https://voquill.com"
  version "0.0.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/voquill/voquill/releases/download/cli-dev-v0.0.5/voquill-dev-aarch64-apple-darwin.tar.gz"
      sha256 "13352a63fe76b33b19821afe3e6b97ee7d169dadc258805f806b1e98ac91a713"
    else
      url "https://github.com/voquill/voquill/releases/download/cli-dev-v0.0.5/voquill-dev-x86_64-apple-darwin.tar.gz"
      sha256 "61a77605518a2f74b23a30d5f752dfdad4aaff40d02e7aacce5694a9a92acb6d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/voquill/voquill/releases/download/cli-dev-v0.0.5/voquill-dev-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c6b60bf8510b7930d670dc14c3aad9c378d94aef180503c1b6f8c1f093e95d4d"
    else
      url "https://github.com/voquill/voquill/releases/download/cli-dev-v0.0.5/voquill-dev-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "245607d143ba65e2d342b7697a6d3f705584b4be496ed20be98a21fceb360935"
    end
  end

  def install
    bin.install "voquill-dev"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/voquill-dev --version")
  end
end

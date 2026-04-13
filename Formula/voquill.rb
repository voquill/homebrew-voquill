class Voquill < Formula
  desc "Voquill CLI"
  homepage "https://voquill.com"
  version "0.0.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/voquill/voquill/releases/download/cli-v0.0.7/voquill-aarch64-apple-darwin.tar.gz"
      sha256 "eeaeebe2b928aec95914705c222a7aa12191edcd7d389d34612d9167cbd266f4"
    else
      url "https://github.com/voquill/voquill/releases/download/cli-v0.0.7/voquill-x86_64-apple-darwin.tar.gz"
      sha256 "7ae117603cabb2ae7f26598b6cc111bbfdd129baa1c82e5ff8b9e9ddab8c9c70"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/voquill/voquill/releases/download/cli-v0.0.7/voquill-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c918ead8c2fee9b2201ad872b7a6cc3cd3a4d874c139670ab59598faac073440"
    else
      url "https://github.com/voquill/voquill/releases/download/cli-v0.0.7/voquill-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ead8e8936bb5b2398aae3954a03434a520b3e4873c306fc63d2a37c3ef61d713"
    end
  end

  def install
    bin.install "voquill"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/voquill --version")
  end
end

class Stm < Formula
  desc "This is a command line tool to help you get started with Solace PubSub+ Event Broker"
  homepage "https://github.com/SolaceLabs/solace-tryme-cli"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/$REPO_NAME/releases/download/v0.0.83/stm-macos-v0.0.83.zip"
      sha256 "$SHA256_X64"
    end

    on_arm do
      url "https://github.com/$REPO_NAME/releases/download/v0.0.83/stm-macos-v0.0.83.zip"
      sha256 "$SHA256_ARM64"
    end
  end
  
  def install
    on_intel do
      bin.install "stm-macos-x64" => "stm"
    end
    on_arm do
      bin.install "stm-macos-arm64" => "stm"
    end
  end
  
  def install
    bin.install "stm-macos" => "stm"
  end

  test do
    system "#{bin}/stm", "--version"  # A test to verify the installation
  end
end

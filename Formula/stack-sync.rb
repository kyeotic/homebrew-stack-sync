class StackSync < Formula
  desc "A CLI tool for managing portainer stacks"
  homepage "https://github.com/kyeotic/stack-sync"
  version "0.3.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kyeotic/stack-sync/releases/download/v#{version}/stack-sync-aarch64-apple-darwin.tar.gz"
      sha256 "2486352864b041e8f2cadcffe6aee9e68ba7dc65187a51624f99119e0f31e210"
    else
      url "https://github.com/kyeotic/stack-sync/releases/download/v#{version}/stack-sync-x86_64-apple-darwin.tar.gz"
      sha256 "c1969ff8a3f54d61537a48b086d2ea357ec0f9c34f8cd19534216c4f169510c1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kyeotic/stack-sync/releases/download/v#{version}/stack-sync-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c860b3856182141c622b3cb7574617175a21e1625993fe5843cd5b57acde3c56"
    end
  end

  def install
    bin.install "stack-sync"
  end

  test do
    system "#{bin}/stack-sync --version"
  end
end
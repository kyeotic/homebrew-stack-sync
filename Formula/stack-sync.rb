class StackSync < Formula
  desc "A CLI tool for managing portainer stacks"
  homepage "https://github.com/kyeotic/stack-sync"
  version "0.3.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kyeotic/stack-sync/releases/download/v#{version}/stack-sync-aarch64-apple-darwin.tar.gz"
      sha256 "7b1ce14f287e14a3092c981c2e760e9f156cd53a1f7ff6827f10201cab3bbeb8"
    else
      url "https://github.com/kyeotic/stack-sync/releases/download/v#{version}/stack-sync-x86_64-apple-darwin.tar.gz"
      sha256 "d0aa4c893a2896d67d4de9043ba994e87742ab366f9eec5875052e4324d6951e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kyeotic/stack-sync/releases/download/v#{version}/stack-sync-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a7adcb81af610331e3eefd215681681ed52398927baf36b6edcf66a3e7d2a4bd"
    end
  end

  def install
    bin.install "stack-sync"
  end

  test do
    system "#{bin}/stack-sync --version"
  end
end
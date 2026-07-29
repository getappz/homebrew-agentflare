class Agentflare < Formula
  desc "Run AI coding agents efficiently, and coordinate more than one of them."
  homepage "https://github.com/getappz/agentflare"
  version "1.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/getappz/agentflare/releases/download/v1.7.0/agentflare-aarch64-apple-darwin.tar.gz"
      sha256 "19530302192572991cae4e80ba2337af346f0fde211cba811500a86d4d7685ca"
    else
      url "https://github.com/getappz/agentflare/releases/download/v1.7.0/agentflare-x86_64-apple-darwin.tar.gz"
      sha256 "b31ddc8d8337c4709f0f3ff3b4eb0d65955dc4344a6ac296dd497de81843bbde"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/getappz/agentflare/releases/download/v1.7.0/agentflare-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "23f418b395bddf638ea25000139b4abf3ce7c03d838c9ea0f53a71d64d0449a2"
    else
      url "https://github.com/getappz/agentflare/releases/download/v1.7.0/agentflare-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a484e8849d3a28fb4dd23ad58d3d7b52202de754bd0812e1c895aed02c105855"
    end
  end

  def install
    bin.install "agentflare"
  end

  test do
    assert_match "agentflare 1.7.0", shell_output("#{bin}/agentflare --version")
  end
end

class Revelo < Formula
  desc "Read technical metadata from any media file, in pure Rust"
  homepage "https://github.com/vbasky/revelo"
  url "https://github.com/vbasky/revelo/archive/refs/tags/v0.5.5.tar.gz"
  sha256 "ff94e1c887683eccf9a45563773341d4b09b6f42992870cb86ea8ca640dea676"
  license "BSD-2-Clause"

  depends_on "rust" => :build

  def install
    system "cargo", "install",
      *std_cargo_args(path: "crates/revelo-cli")
  end

  test do
    assert_match version.to_s,
      shell_output("#{bin}/revelo --version")
  end
end

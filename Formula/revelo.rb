class Revelo < Formula
  desc "Read technical metadata from any media file, in pure Rust"
  homepage "https://github.com/vbasky/revelo"
  url "https://github.com/vbasky/revelo/archive/refs/tags/v0.5.6.tar.gz"
  sha256 "7fda358aa8474bc92f0b87fa92456a3f0bd0a06033bd136a3bdc6c0ea944056a"
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

class Revelo < Formula
  desc "Read technical metadata from any media file, in pure Rust"
  homepage "https://github.com/vbasky/revelo"
  url "https://github.com/vbasky/revelo/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "1e26a890893f1dff418a51c039a78b5ba2c5dd0f2f1dd9cdbb7eef4b70484c95"
  license "BSD-2-Clause"

  depends_on "rust" => :build

  def install
    system "cargo", "install",
      *std_cargo_args(path: "crates/revelo-cli")
  end

  test do
    assert_match version.to_s,
      shell_output("\#{bin}/revelo --version")
  end
end

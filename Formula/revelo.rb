class Revelo < Formula
  desc "Read technical metadata from any media file, in pure Rust"
  homepage "https://github.com/vbasky/revelo"
  url "https://github.com/vbasky/revelo/archive/refs/tags/v0.5.1.tar.gz"
  sha256 "ee39353fd21cf28b296e077b961cb78cc6103396b7fd8230c44f2252c3052c1d"
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

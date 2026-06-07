class Revelo < Formula
  desc "Read technical metadata from any media file, in pure Rust"
  homepage "https://github.com/vbasky/revelo"
  url "https://github.com/vbasky/revelo/archive/refs/tags/v0.4.6.tar.gz"
  sha256 "b2f0e7eb8103d7ba2fce02c49ebd6aa180cdbbca7a236d5c89e8d08369932717"
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

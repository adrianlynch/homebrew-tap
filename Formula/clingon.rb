class Clingon < Formula
  desc "Generate tiny deterministic terminal characters"
  homepage "https://github.com/adrianlynch/clingon"
  url "https://registry.npmjs.org/@adrianlynch/clingon/-/clingon-0.1.9.tgz"
  sha256 "c35d56966d8579aba487c891195463c97d02249d6884965ed4c121b5b807c09e"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    output = shell_output("#{bin}/clingon --with-name orlando-reginald-morris-junior --tiny --no-color")
    assert_match "[][][][]", output
  end
end

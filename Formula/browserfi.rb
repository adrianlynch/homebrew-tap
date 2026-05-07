class Browserfi < Formula
  desc "Create and manage custom bundled browsers"
  homepage "https://github.com/adrianlynch/browserfi"
  url "https://registry.npmjs.org/@adrianlynch/browserfi/-/browserfi-0.1.1.tgz"
  sha256 "acb8ba0ad66bd04c695c3b1f506e858feaf7159945434a7fdf8d5d5a49f87f50"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "browserfi", shell_output("#{bin}/browserfi help")
  end
end

class Browserfi < Formula
  desc "Create and manage custom bundled browsers"
  homepage "https://github.com/adrianlynch/browserfi"
  url "https://registry.npmjs.org/@adrianlynch/browserfi/-/browserfi-1.2.1.tgz"
  sha256 "9d2c67e3299a720d3826d22266745cdf178b1b93b13f1be53707e0c1a9cf0a7f"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args.map { |arg| (arg == "--min-release-age=1") ? "--min-release-age=0" : arg }
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "browserfi", shell_output("#{bin}/browserfi help")
  end
end

class Browserfi < Formula
  desc "Create and manage custom bundled browsers"
  homepage "https://github.com/adrianlynch/browserfi"
  url "https://registry.npmjs.org/@adrianlynch/browserfi/-/browserfi-1.0.1.tgz"
  sha256 "c7bf777005bf30de06598d5f389e6f63b1e212336ce34049f00e26ae8ab980cc"
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

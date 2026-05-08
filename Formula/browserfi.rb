class Browserfi < Formula
  desc "Create and manage custom bundled browsers"
  homepage "https://github.com/adrianlynch/browserfi"
  url "https://registry.npmjs.org/@adrianlynch/browserfi/-/browserfi-1.2.0.tgz"
  sha256 "89f3276d878c6f1cb66ad7b79f39bf93ab7d6e705c9203cce55c8c2435b7d6e5"
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

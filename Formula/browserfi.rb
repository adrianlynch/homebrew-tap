class Browserfi < Formula
  desc "Create and manage custom bundled browsers"
  homepage "https://github.com/adrianlynch/browserfi"
  url "https://registry.npmjs.org/@adrianlynch/browserfi/-/browserfi-1.1.0.tgz"
  sha256 "e90311468483ad41f4218140a967a4c00be9a6c5c29d402551a7a3baecd65d9a"
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

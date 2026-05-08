class Browserfi < Formula
  desc "Create and manage custom bundled browsers"
  homepage "https://github.com/adrianlynch/browserfi"
  url "https://registry.npmjs.org/@adrianlynch/browserfi/-/browserfi-1.0.0.tgz"
  sha256 "ffb23fe4158300c8f5faa3a908b7bf39c43b086ffd3e913584649c7522f40dc6"
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

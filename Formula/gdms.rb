class Gdms < Formula
  desc "Synchronize Google Docs/Sheets with local Markdown/CSV files"
  homepage "https://github.com/rsheyd/google-docs-markdown-sync"
  url "https://github.com/rsheyd/google-docs-markdown-sync/archive/refs/tags/v0.8.10.tar.gz"
  sha256 "f8815f99c36d65e6f0ba7c6d9c668495675e81e806545900fd49ceb42d2cc175"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "GDMS CLI: #{version}", shell_output("#{bin}/gdms --version")
    assert_match "Usage: gdms COMMAND", shell_output("#{bin}/gdms help")
  end
end

class Gdms < Formula
  desc "Synchronize Google Docs/Sheets with local Markdown/CSV files"
  homepage "https://github.com/rsheyd/google-docs-markdown-sync"
  url "https://github.com/rsheyd/google-docs-markdown-sync/archive/refs/tags/v0.8.12.tar.gz"
  sha256 "06d270199452e38527831f70c0cf79695c75239582203b972fe9cacfc5c293f5"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  def caveats
    <<~EOS
      Configure Google authorization, then install the background service:
        gdms auth
        gdms install-service
        gdms install-finder-action

      Run `gdms install-service` again after every Homebrew upgrade so launchd
      and Finder Quick Actions use the new versioned Cellar path.
    EOS
  end

  test do
    assert_match "GDMS CLI: #{version}", shell_output("#{bin}/gdms --version")
    assert_match "Usage: gdms COMMAND", shell_output("#{bin}/gdms help")
  end
end

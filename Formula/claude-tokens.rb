class ClaudeTokens < Formula
  include Language::Python::Virtualenv

  desc "Live terminal TUI tracking Claude Code token usage and cost estimates"
  homepage "https://github.com/Bernardo-Andreatta/terminal-claude-token-usage"
  url "https://github.com/Bernardo-Andreatta/terminal-claude-token-usage/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "23bfb9d661c4baafd44e6b17965bb3fd9e65cceae4e97dffe4629e34ee0b8155"
  license "MIT"
  head "https://github.com/Bernardo-Andreatta/terminal-claude-token-usage.git", branch: "main"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
    bin.install_symlink Dir[libexec/"bin/claude-tokens*"]
  end

  test do
    assert_predicate bin/"claude-tokens", :exist?
  end
end

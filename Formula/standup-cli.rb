class StandupCli < Formula
  include Language::Python::Virtualenv

  desc "Daily Standup Auto-Generator from git commits"
  homepage "https://github.com/prayagtushar/standup-cli"
  url "https://files.pythonhosted.org/packages/source/s/standup_cli/standup_cli-0.1.0.tar.gz"
  sha256 "a6a7699ec25192c85df03486638ceee3f89a78eccf93d6b00c1940f12000062f"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"standup-cli", "--help"
  end
end

class Socli < Formula
  include Language::Python::Virtualenv

  desc "Stack overflow command line client. Search and browse stack overflow without leaving the terminal."
  homepage "https://www.github.com/gautamkrishnar/socli"
  url "https://files.pythonhosted.org/packages/4e/d6/2dace21252d587142def800414de90b90d38fa51d8e786fbb2f294ed6ba6/socli-4.9.tar.gz"
  sha256 "1bbb1f953db863bd37b267c924b08153054f9457b72f704e2c6d50385ee3cd4f"

  depends_on "python3"

  def install
    venv = virtualenv_create(libexec, "python3")
    if OS.mac?
      virtualenv_install_with_resources
    else
      venv.pip_install resources
      venv.pip_install_and_link buildpath
    end
  end

  test do
    false
  end
end

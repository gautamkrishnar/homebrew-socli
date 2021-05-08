class Socli < Formula
  include Language::Python::Virtualenv

  desc "Stack overflow command line client. Search and browse stack overflow without leaving the terminal."
  homepage "https://www.github.com/gautamkrishnar/socli"
  url "https://files.pythonhosted.org/packages/d5/f8/a7eb0fa4bc5e62e0cf51d5563d0e669ea0b218dae03f84f8a5287718d811/socli-6.5.tar.gz"
  sha256 "9e186b1ef23e70021c161c63011827ef0af7a28ea40ffb8ba0cd2b2c692789c5"

  depends_on "python3"

  resource "argcomplete" do
    url "https://files.pythonhosted.org/packages/6a/b4/3b1d48b61be122c95f4a770b2f42fc2552857616feba4d51f34611bd1352/argcomplete-1.12.3.tar.gz"
    sha256 "2c7dbffd8c045ea534921e63b0be6fe65e88599990d8dc408ac8c542b72a5445"
  end

  resource "beautifulsoup4" do
    url "https://files.pythonhosted.org/packages/6b/c3/d31704ae558dcca862e4ee8e8388f357af6c9d9acb0cad4ba0fbbd350d9a/beautifulsoup4-4.9.3.tar.gz"
    sha256 "84729e322ad1d5b4d25f805bfa05b902dd96450f43842c4e99067d5e1369eb25"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/06/a9/cd1fd8ee13f73a4d4f491ee219deeeae20afefa914dfb4c130cfc9dc397a/certifi-2020.12.5.tar.gz"
    sha256 "1a4995114262bffbc2413b159f2a1a480c969de6e6eb13ee966d470af86af59c"
  end

  resource "chardet" do
    url "https://files.pythonhosted.org/packages/fc/bb/a5768c230f9ddb03acc9ef3f0d4a3cf93462473795d18e9535498c8f929d/chardet-3.0.4.tar.gz"
    sha256 "84ab92ed1c4d4f16916e05906b6b75a6c0fb5db821cc65e70cbd64a3e2a5eaae"
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

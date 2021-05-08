class Socli < Formula
  include Language::Python::Virtualenv

  desc "Stack overflow command line client. Search and browse stack overflow without leaving the terminal."
  homepage "https://www.github.com/gautamkrishnar/socli"
  url "https://files.pythonhosted.org/packages/a7/cb/48e057b6c24a5e475897315fe23e7600900d6d4b54990aeed668a40f2385/socli-6.6.tar.gz"
  sha256 "9c220c1988a544f97d6fa2264b63d36e4a9408a04498b4be175f5150b09c4f81"

  depends_on "python3"

  resource "argcomplete" do
    url "https://files.pythonhosted.org/packages/cb/53/d2e3d11726367351b00c8f078a96dacb7f57aef2aca0d3b6c437afc56b55/argcomplete-1.12.2.tar.gz"
    sha256 "de0e1282330940d52ea92a80fea2e4b9e0da1932aaa570f84d268939d1897b04"
  end

  resource "beautifulsoup4" do
    url "https://files.pythonhosted.org/packages/c6/62/8a2bef01214eeaa5a4489eca7104e152968729512ee33cb5fbbc37a896b7/beautifulsoup4-4.9.1.tar.gz"
    sha256 "73cc4d115b96f79c7d77c1c7f7a0a8d4c57860d1041df407dd1aae7f07a77fd7"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/40/a7/ded59fa294b85ca206082306bba75469a38ea1c7d44ea7e1d64f5443d67a/certifi-2020.6.20.tar.gz"
    sha256 "5930595817496dd21bb8dc35dad090f1c2cd0adfaf21204bf6732ca5d8ee34d3"
  end

  resource "chardet" do
    url "https://files.pythonhosted.org/packages/fc/bb/a5768c230f9ddb03acc9ef3f0d4a3cf93462473795d18e9535498c8f929d/chardet-3.0.4.tar.gz"
    sha256 "84ab92ed1c4d4f16916e05906b6b75a6c0fb5db821cc65e70cbd64a3e2a5eaae"
  end

  resource "colorama" do
    url "https://files.pythonhosted.org/packages/82/75/f2a4c0c94c85e2693c229142eb448840fba0f9230111faa889d1f541d12d/colorama-0.4.3.tar.gz"
    sha256 "e96da0d330793e2cb9485e9ddfd918d456036c7149416295932478192f4436a1"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/ea/b7/e0e3c1c467636186c39925827be42f16fee389dc404ac29e930e9136be70/idna-2.10.tar.gz"
    sha256 "b307872f855b18632ce0c21c5e45be78c0ea7ae4c15c828c20788b26921eb3f6"
  end

  resource "py-stackexchange" do
    url "https://files.pythonhosted.org/packages/62/1b/09d4099a54971599ceabc19846c242a1bccd5d66bede7235894412eb4e11/py-stackexchange-2.2.7.tar.gz"
    sha256 "848bf85d98b95706750c61572fc2a2677cb8566e96b078bbe6261f0e2d8252b4"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/da/67/672b422d9daf07365259958912ba533a0ecab839d4084c487a5fe9a5405f/requests-2.24.0.tar.gz"
    sha256 "b3559a131db72c33ee969480840fff4bb6dd111de7dd27c8ee1f820f4f00231b"
  end

  resource "sentry-sdk" do
    url "https://files.pythonhosted.org/packages/07/43/a3e5186e9262fc7edfb83a376ba7647b5a776047b5302124130869a7f5a6/sentry-sdk-0.18.0.tar.gz"
    sha256 "1d91a0059d2d8bb980bec169578035c2f2d4b93cd8a4fb5b85c81904d33e221a"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/6b/34/415834bfdafca3c5f451532e8a8d9ba89a21c9743a0c59fbd0205c7f9426/six-1.15.0.tar.gz"
    sha256 "30639c035cdb23534cd4aa2dd52c3bf48f06e5f4a941509c8bafd8ce11080259"
  end

  resource "soupsieve" do
    url "https://files.pythonhosted.org/packages/3e/db/5ba900920642414333bdc3cb397075381d63eafc7e75c2373bbc560a9fa1/soupsieve-2.0.1.tar.gz"
    sha256 "a59dc181727e95d25f781f0eb4fd1825ff45590ec8ff49eadfd7f1a537cc0232"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/81/f4/87467aeb3afc4a6056e1fe86626d259ab97e1213b1dfec14c7cb5f538bf0/urllib3-1.25.10.tar.gz"
    sha256 "91056c15fa70756691db97756772bb1eb9678fa585d9184f24534b100dc60f4a"
  end

  resource "urwid" do
    url "https://files.pythonhosted.org/packages/c0/b0/e4e8597cf93411cc85a70766227c8a113b153b7022699a080d22fac28a00/urwid-2.1.1.tar.gz"
    sha256 "7870866e35b00b71b0c9ccdd1281c8e7fac3806d60b9c1075c95dd5dad88d526"
  end

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

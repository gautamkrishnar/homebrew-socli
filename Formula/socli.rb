class Socli < Formula
  include Language::Python::Virtualenv

  desc "Stack overflow command line client. Search and browse stack overflow without leaving the terminal"
  homepage "https://github.com/gautamkrishnar/socli"
  url "https://github.com/gautamkrishnar/socli/archive/4.6.tar.gz"
  sha256 "ae049d776c8845385a295b06ec90e2d323d755e983bb1005e7fce9ecc8aada8d"
  head "https://github.com/gautamkrishnar/socli.git"

  # TODO: If you're submitting an existing package, make sure you include your
  #       bottle block here.

  depends_on :python3

  resource "soupsieve" do
    url "https://files.pythonhosted.org/packages/3e/db/5ba900920642414333bdc3cb397075381d63eafc7e75c2373bbc560a9fa1/soupsieve-2.0.1.tar.gz#sha256=a59dc181727e95d25f781f0eb4fd1825ff45590ec8ff49eadfd7f1a537cc0232"
    sha256 "a59dc181727e95d25f781f0eb4fd1825ff45590ec8ff49eadfd7f1a537cc0232"
  end

  resource "BeautifulSoup4" do
    url "https://files.pythonhosted.org/packages/c6/62/8a2bef01214eeaa5a4489eca7104e152968729512ee33cb5fbbc37a896b7/beautifulsoup4-4.9.1.tar.gz#sha256=73cc4d115b96f79c7d77c1c7f7a0a8d4c57860d1041df407dd1aae7f07a77fd7"
    sha256 "73cc4d115b96f79c7d77c1c7f7a0a8d4c57860d1041df407dd1aae7f07a77fd7"
  end

  resource "colorama" do
    url "https://files.pythonhosted.org/packages/c9/dc/45cdef1b4d119eb96316b3117e6d5708a08029992b2fee2c143c7a0a5cc5/colorama-0.4.3-py2.py3-none-any.whl#sha256=7d73d2a99753107a36ac6b455ee49046802e59d9d076ef8e47b61499fa29afff"
    sha256 "7d73d2a99753107a36ac6b455ee49046802e59d9d076ef8e47b61499fa29afff"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/67/4b/141a581104b1f6397bfa78ac9d43d8ad29a7ca43ea90a2d863fe3056e86a/six-1.11.0-py2.py3-none-any.whl#sha256=832dc0e10feb1aa2c68dcc57dbb658f1c7e65b9b61af69048abc87a2db00a0eb"
    sha256 "832dc0e10feb1aa2c68dcc57dbb658f1c7e65b9b61af69048abc87a2db00a0eb"
  end

  resource "Py-stackExchange" do
    url "https://files.pythonhosted.org/packages/62/1b/09d4099a54971599ceabc19846c242a1bccd5d66bede7235894412eb4e11/py-stackexchange-2.2.7.tar.gz#sha256=848bf85d98b95706750c61572fc2a2677cb8566e96b078bbe6261f0e2d8252b4"
    sha256 "848bf85d98b95706750c61572fc2a2677cb8566e96b078bbe6261f0e2d8252b4"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/9f/e0/accfc1b56b57e9750eba272e24c4dddeac86852c2bebd1236674d7887e8a/certifi-2018.11.29-py2.py3-none-any.whl#sha256=993f830721089fef441cdfeb4b2c8c9df86f0c63239f06bd025a76a7daddb033"
    sha256 "993f830721089fef441cdfeb4b2c8c9df86f0c63239f06bd025a76a7daddb033"
  end

  resource "chardet" do
    url "https://files.pythonhosted.org/packages/bc/a9/01ffebfb562e4274b6487b4bb1ddec7ca55ec7510b22e4c51f14098443b8/chardet-3.0.4-py2.py3-none-any.whl#sha256=fc323ffcaeaed0e0a02bf4d117757b98aed530d9ed4531e3e15460124c106691"
    sha256 "fc323ffcaeaed0e0a02bf4d117757b98aed530d9ed4531e3e15460124c106691"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/a2/38/928ddce2273eaa564f6f50de919327bf3a00f091b5baba8dfa9460f3a8a8/idna-2.10-py2.py3-none-any.whl#sha256=b97d804b1e9b523befed77c48dacec60e6dcb0b5391d57af6a65a312a90648c0"
    sha256 "b97d804b1e9b523befed77c48dacec60e6dcb0b5391d57af6a65a312a90648c0"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/e1/e5/df302e8017440f111c11cc41a6b432838672f5a70aa29227bf58149dc72f/urllib3-1.25.9-py2.py3-none-any.whl#sha256=88206b0eb87e6d677d424843ac5209e3fb9d0190d0ee169599165ec25e9d9115"
    sha256 "88206b0eb87e6d677d424843ac5209e3fb9d0190d0ee169599165ec25e9d9115"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/45/1e/0c169c6a5381e241ba7404532c16a21d86ab872c9bed8bdcd4c423954103/requests-2.24.0-py2.py3-none-any.whl#sha256=fe75cc94a9443b9246fc7049224f75604b113c36acb93f87b80ed42c44cbb898"
    sha256 "fe75cc94a9443b9246fc7049224f75604b113c36acb93f87b80ed42c44cbb898"
  end

  def install
    virtualenv_install_with_resources
  end

  # TODO: Add your package's tests here
end

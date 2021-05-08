# Gets Latest version of https://github.com/gautamkrishnar/socli
get_latest_release() {
  curl --silent "https://api.github.com/repos/$1/releases/latest" | # Get latest release from GitHub api
    grep '"tag_name":' |                                            # Get tag line
    sed -E 's/.*"([^"]+)".*/\1/'                                    # Pluck JSON value
}

# Generate formula
set -e
export PUBLISHED_VERSION=$(get_latest_release "gautamkrishnar/socli")

pip install homebrew-pypi-poet==0.10.0 requests==2.24.0
echo Doing pip install  --upgrade --no-cache socli="${PUBLISHED_VERSION}"

# Code to wait till the latest package is available in pypi, if available do install
until pip install --upgrade --no-cache socli=="${PUBLISHED_VERSION}" && [[ "$(socli --version | awk '{print $2}')" == "${PUBLISHED_VERSION}" ]] && true || false
do
  echo "Retrying again in 10 seconds..."
  sleep 10
done

# Generate formula
poet -f socli > socli.rb

# Replacing with required values for linux
cat << EOF | python
text_to_replace = '''
  def install
    virtualenv_create(libexec, "python3")
    virtualenv_install_with_resources
  end
'''

new_text = '''
  def install
    venv = virtualenv_create(libexec, "python3")
    if OS.mac?
      virtualenv_install_with_resources
    else
      venv.pip_install resources
      venv.pip_install_and_link buildpath
    end
  end
'''

file = open('socli.rb', 'r')
data = file.read()
file.close()
data = data.replace(text_to_replace, new_text)
data = data.replace("Shiny new formula", "Stack overflow command line client. Search and browse stack overflow without leaving the terminal.")
file = open('socli.rb', 'w')
file.write(data)
file.close()
EOF

echo "Generated formula:"
echo "------------------------------------------------------------------------------------"
cat socli.rb
echo ""
echo "------------------------------------------------------------------------------------"

# Pushing to tap
git config --global user.email "gkr@tuta.io"
git config --global user.name "gkr-bot"

echo "Replacing formula..."
mv -fv socli.rb Formula/socli.rb
git add Formula/socli.rb || true
echo "Committing formula..."
git commit -m "Published ${PUBLISHED_VERSION}" || true
echo "Pushing formula..."
git push --quiet

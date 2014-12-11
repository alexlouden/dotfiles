packages=(
  ipython
  virtualenv
  virtualenvwrapper
)

echo "installing python packages..."
pip install ${packages[@]}

# TODO venv setup
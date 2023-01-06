# source osx.sh
# source brew.sh
# source cask.sh
# source python.sh

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

echo "installing oh-my-zsh..."
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | ZSH="${DIR}/zsh" sh

echo "installing theme"
ln -svi "${DIR}/alexlouden-pure.zsh-theme" "${DIR}/zsh/custom"

echo "setting up symlinks"
# files to symlink to ~
home_files=(
	.aliases
	.gitconfig
	.gitignore_global
	.paths
	.mackup.cfg
	.mackup
	.zshrc
)

for filename in "${home_files[@]}"; do
	echo "$filename"
	ln -svi "${DIR}/${filename}" ~
done

echo "now set up dropbox"
echo "wait for files to sync"
echo "then run mackup restore"
# source osx.sh
# source brew.sh
# source cask.sh
# source python.sh

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

if test ! -d ~/.oh-my-zsh; then
	echo "installing oh-my-zsh..."
	curl -L http://install.ohmyz.sh | sh

	# Link oh-my-zsh plugins
	mkdir "~/.oh-my-zsh"
	rm -r "~/.oh-my-zsh/custom"
	ln -svi "${DIR}/.oh-my-zsh/custom" ~/.oh-my-zsh
fi

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
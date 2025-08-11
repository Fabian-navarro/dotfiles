
# Maintainer: Fabian Navarro <fabian.navarro.parraga@gmail.com>

pkgname=fabian-dotfiles
pkgver=1.0.0
pkgrel=1
arch=('any')
url="https://github.com/Fabian-navarro/dotfiles"
license=('MIT')
depends=('awesome' 'neovim' 'stow' 'alacritty' 'kanata')
source=()
sha256sums=()

prepare() {
}

build() {
}

package() {
    local dotfiles_dir="$HOME/.dotfiles"

    # Ensure the ~/.dotfiles directory exists
    install -dm755 "$pkgdir/$dotfiles_dir"

    # Copy the dotfiles from the extracted archive to ~/.dotfiles
    cd "$srcdir/dotfiles-main"
    cp -r . "$pkgdir/$dotfiles_dir"

    # Prompt the user for adoption
    echo
    echo "Would you like to adopt your existing dotfiles into symlinks?"
    echo "This will convert your current dotfiles into symlinks to ~/.dotfiles."
    read -p "Proceed with adoption? [y/N]: " response

    if [[ "$response" =~ ^[Yy]$ ]]; then
        echo "Adopting existing dotfiles with stow..."
        stow --adopt --target="$HOME" -d "$pkgdir/$dotfiles_dir"
    else
        echo "Skipping adoption. Your existing dotfiles remain untouched."
    fi
}

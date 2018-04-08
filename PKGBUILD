# Maintainer: FadeMind <fademind@gmail.com>
# Author: esclapion <esclapion[at]gmail[dot]com>
# Contributor: esclapion <esclapion[at]gmail[dot]com>

_commit=51f96a1850a02a933fd7402d7ffcafe4df010593
pkgname=mhwd-chroot
pkgver=20180408
pkgrel=1
pkgdesc="Tool to easily chroot into an installed Linux installation from a live boot"
url="https://github.com/FadeMind/mhwd-chroot"
arch=('any')
license=('GPL')
depends=('bash')
optdepends=('gksu: gnome gui for su'
            'kdesu: kde gui for su')
source=("${url}/archive/${_commit}.tar.gz")
sha256sums=('5a32a35e4d42c8746f0f5a45ed0bb1d2217db4fc1a86ba9b8c865c892389978c')


prepare() {
    mv ${pkgname}-${_commit} ${pkgname}
}

package() {
    make -C "${pkgname}" DESTDIR="${pkgdir}" install
}

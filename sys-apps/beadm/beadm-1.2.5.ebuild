# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5

inherit eutils

DESCRIPTION="Linux port of a FreeBSD utility to manage Boot Environments on ZFS filesystems."
HOMEPAGE="https://github.com/b333z/beadm"
SRC_URI="https://codeload.github.com/b333z/beadm/tar.gz/${PV} -> ${PN}-${PV}.tar.gz"
LICENSE="FreeBSD"

SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"

src_install() {
	dobin beadm
	newconfd beadm.conf beadm
	doman beadm.1
}

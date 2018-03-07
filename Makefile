# $FreeBSD$

PORTNAME=	openvpn-auth-script
PORTREVISION=	0
CATEGORIES=	security net

MAINTAINER=	pdemon@gmail.com
COMMENT=	Generic Script Based Deferred Auth Plugin for OpenVPN

LICENSE=	APACHE20
LICENSE_FILE=	${WRKSRC}/LICENSE

# Github includes the path & version as subcomponents of the extraction
# We need to make sure the package can be easily found and doesn't collide
# with others but also is safe to extract and doesn't break WRKSRC.
DISTVERSION=	1.0.0.1
DIST_SUBDIR=	${PORTNAME}
EXTRACT_SUFFIX=	.tar.gz
DISTFILES=	${DISTVERSION}${EXTRACT_SUFFIX}

# Ensure we can use GNU Make
USES=	gmake

USE_GITHUB=	yes
GH_ACCOUNT=	pdemonaco
GH_PROJECT=	${PORTNAME}
GH_TAGNAME=	${DISTVERSION}

# We need OpenVPN to build
BUILD_DEPENDS=	${LOCALBASE}/include/openvpn-plugin.h:security/openvpn

# Configure for FreeBSD
CFLAGS+=	-I${PREFIX}/include

post-install:
	${INSTALL_LIB} ${WRKSRC}/openvpn-plugin-outh-script.so ${STAGEDIR}${PREFIX}/lib/openvpn/plugins/

.include <bsd.port.mk>

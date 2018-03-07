# $FreeBSD$

PORTNAME=	openvpn-auth-script
DISTVERSION=	1.0.0.1
CATEGORIES=	security net

MAINTAINER=	pdemon@gmail.com
COMMENT=	Generic Script Based Deferred Auth Plugin for OpenVPN

LICENSE=	APACHE20
LICENSE_FILE=	${WRKSRC}/LICENSE

# We need OpenVPN to build
BUILD_DEPENDS=	${LOCALBASE}/include/openvpn-plugin.h:security/openvpn

USES=	gmake metaport

USE_GITHUB=	yes
GH_ACCOUNT=	pdemonaco
GH_PROJECT=	${PORTNAME}
GH_TAGNAME=	${DISTVERSION}

# Configure for FreeBSD
CFLAGS+=	-I${PREFIX}/include

post-install:
	${INSTALL_LIB} ${WRKSRC}/openvpn-plugin-auth-script.so ${STAGEDIR}${PREFIX}/lib/openvpn/plugins/

.include <bsd.port.mk>

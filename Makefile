# $FreeBSD$

PORTNAME=	openvpn-auth-script
PORTREVISION=	0
CATEGORIES=	security net
MASTER_SITES=	https://github.com/pdemonaco/${PORTNAME}/archive/

DISTVERSION=	1.0.0.0
DIST_SUBDIR=	${PORTNAME}
EXTRACT_SUFFIX=	.tar.gz
DISTFILES=	${DISTVERSION}${EXTRACT_SUFFIX}

MAINTAINER=	pdemon@gmail.com
COMMENT=	Generic Script Based Deferred Auth Plugin for OpenVPN

LICENSE=	APACHE20

.include <bsd.port.mk>

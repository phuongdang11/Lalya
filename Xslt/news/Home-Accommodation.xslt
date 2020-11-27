<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone">
		<section class="home-accommodation">
			<div class="container">
				<div class="section-title text-center">
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
				</div>
				<div class="home-accommodation-swiper">
					<xsl:apply-templates select="News"></xsl:apply-templates>
				</div>
				<div class="home-accommodation-three trinity-item-swiper">
					<div class="swiper-container">
						<div class="swiper-wrapper">
							<xsl:apply-templates select="News" mode='Bottom'></xsl:apply-templates>


						</div>
					</div>
					<div class="swiper-nav-wrap">
						<div class="nav-arrow-prev"><em class="lnr lnr-arrow-left"></em></div>
						<div class="nav-arrow-next"><em class="lnr lnr-arrow-right"></em></div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News">
		<xsl:if test="position()=1">

			<div class="swiper-container">
				<div class="swiper-wrapper">
					<xsl:apply-templates select="NewsImages"></xsl:apply-templates>
				</div>
			</div>
			<div class="sub-title text-center">
				<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			</div>
			<div class="caption text-center">
				<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
			</div>
			<div class="btn-center"><a class="btn btn-view-more" href="javascript:;"><span>See more</span></a></div>
		</xsl:if>

	</xsl:template>
	<xsl:template match="NewsImages">
		<div class="swiper-slide">
			<div class="wrap"><a href="javascript:;">
					<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					</img>
				</a></div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode='Bottom'>
		<xsl:if test="position()>1">

			<div class="swiper-slide">
				<div class="figure-accommodation">
					<div class="image-wrap zoom-in">
						<a>
							<xsl:attribute name="href">
								<xsl:text>javascript:;</xsl:text>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<img>
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							</img>
						</a>
					</div>
					<div class="content">
						<div class="sub-title text-center">
							<a>
								<xsl:attribute name="href">
									<xsl:text>javascript:;</xsl:text>
								</xsl:attribute>
								<xsl:attribute name="title">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
								<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
								<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
							</a>
						</div>
						<div class="caption text-center">
							<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
						</div>
						<div class="btn-center"><a class="btn btn-view-more" href="javascript:;"><span>see
									more</span></a></div>
					</div>
				</div>
			</div>
		</xsl:if>

	</xsl:template>
</xsl:stylesheet>

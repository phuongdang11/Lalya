<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone">
		<section class="home-new-day">
			<div class="section-title text-center" data-aos="fade-in" data-aos-easing="ease-in-back" data-aos-delay="0"
				data-aos-duration="650" data-aos-offset="250">
				<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
			</div>
			<div class="zone-description text-center" data-aos="fade-up" data-aos-easing="ease-in" data-aos-delay="0"
				data-aos-duration="650" data-aos-offset="250">
				<xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
			</div>
			<div class="swiper-container" data-aos="fade-in" data-aos-easing="ease-in-back" data-aos-delay="0"
				data-aos-duration="850" data-aos-offset="250">
				<div class="swiper-wrapper">
					<xsl:apply-templates select="News"></xsl:apply-templates>

				</div>
			</div>
		</section>
	</xsl:template>

	<xsl:template match="News">
		<xsl:apply-templates select="NewsImages"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="NewsImages">
		<div class="swiper-slide">
			<div class="wrap">
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
		</div>
	</xsl:template>
</xsl:stylesheet>

<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="wellness_detail-3">
			<div class="container">
				<div class="section-title text-center">
					<h2>Other facilities</h2>
				</div>
				<div class="wnd-3-wrapper">
					<div class="swiper-container">
						<div class="swiper-wrapper">
							<xsl:apply-templates select="/ZoneList/Zone/Zone"></xsl:apply-templates>

						</div>
					</div>
					<div class="arrow-slide">
						<div class="swiper-button-prev"> <span class="lnr lnr-arrow-left"></span></div>
						<div class="swiper-button-next"> <span class="lnr lnr-arrow-right"></span></div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Zone">
		<div class="swiper-slide">
			<div class="img">


				<a>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
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
			<div class="content text-center">


				<a>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
				</a>
			</div>
			<div class="btn-center"><a class="btn btn-view-more">

					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<span>See more</span>
				</a>
			</div>
		</div>
	</xsl:template>

</xsl:stylesheet>

<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Banner">
		<section class="wellness_detail-2">
			<xsl:attribute name="setBackground">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<div class="wrapper">
				<div class="title">
					<h2>
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						<strong>
							<xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
						</strong>
					</h2>
				</div><a class="btn btn-booknow" href="">
					<xsl:value-of disable-output-escaping="yes" select="Url"></xsl:value-of>
					<span> <img src="/Data/Sites/1/media/img/icon/Vector_Smart_Object.png" alt=""/></span>
					<p class="m-0">BROCHURE</p>
				</a>
			</div>
		</section>
	</xsl:template>

</xsl:stylesheet>

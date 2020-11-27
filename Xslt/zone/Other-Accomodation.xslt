<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="accomodation-other">
			<div class="section-title text-center">Accomodation</div>
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<xsl:apply-templates select="/ZoneList/Zone/Zone"></xsl:apply-templates>

				</div>
			</div>
		</section>
	</xsl:template>

	<xsl:template match="Zone" >
		<xsl:if test="IsActive='false'">


			<div class="swiper-slide">
				<div class="wrapper">
					<div class="image-wrap zoom-in"><a>
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
						</a></div>
					<div class="title">
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					</div>
					<div class="overlay">
						<div class="sub-title white">
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
							<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
						</div>
						<div class="caption text-white text-center">
							<xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
						</div>
						<div class="btn-center"><a class="btn btn-view-more">

								<xsl:attribute name="href">
									<xsl:value-of select="Url"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="title">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>


							<span>See more</span></a>
						</div>
					</div>
				</div>
			</div>
		</xsl:if>


	</xsl:template>

</xsl:stylesheet>

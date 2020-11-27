<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="pages-wellness_list">
			<div class="container">
				<div class="section-title text-center">
					<xsl:value-of disable-output-escaping="yes" select="/ZoneList/RootTitle"></xsl:value-of>

				</div>
				<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>

			</div>
		</section>
	</xsl:template>

	<xsl:template match="Zone">
		<div class="row">
			<div class="article-1 col w-full xl:w-8/12 md:w-1/2">
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
			</div>
			<div class="article-2 col w-full xl:w-4/12 md:w-1/2">
				<div class="wrapper">
					<div class="title"> <a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</a></div>
					<div class="content">
						<xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
					</div>
					<div class="links">
						<div class="links-item"> <a>
								<xsl:attribute name="href">
									<xsl:value-of select="Url"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="title">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>SEE MORE
							</a></div>
							
						<div class="links-item icon"><span> <img src="/Data/Sites/1/media/img/icon/Vector_Smart_Object.png"
									alt=""/></span><a href="javascript:;">Download borchure </a></div>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>

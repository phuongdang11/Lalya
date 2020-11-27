<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone">
		<section class="home-about">
			<div class="container">
				<div class="section-title text-center" data-aos="zoom-in" data-aos-easing="ease-in" data-aos-delay="200"
					data-aos-duration="650" data-aos-offset="150">
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
				</div>
				<div class="zone-description text-center" data-aos="fade-up" data-aos-easing="ease-in" data-aos-delay="300"
					data-aos-duration="650" data-aos-offset="150">
					<xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
				</div>
				<div class="row top-row">
					<xsl:apply-templates select="News"></xsl:apply-templates>
				</div>
				<div class="row">
					<xsl:apply-templates select="News" mode='Bottom'></xsl:apply-templates>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News">
		<xsl:if test="position()=1">

			<div class="col w-full lg:w-8/12">
				<div class="image-wrap opacity" data-aos="zoom-in" data-aos-easing="ease-in" data-aos-delay="200"
					data-aos-duration="650" data-aos-offset="250"><a href="javascript:;">
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
			<div class="col w-full lg:w-4/12" data-aos="fade-left" data-aos-easing="ease-in" data-aos-delay="300"
				data-aos-duration="650" data-aos-offset="250">
				<div class="content">
					<div class="sub-title green medium">
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
					<div class="scollbar-wrap">
						<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
					</div>
					<div class="btn-left"><a class="btn btn-view-more green" href="javascript:;"><span>see
								more</span></a>
					</div>
				</div>
			</div>
		</xsl:if>

	</xsl:template>
	<xsl:template match="News" mode='Bottom'>
		<xsl:if test="position()=2">

			<div class="col w-full md:w-4/12" data-aos="zoom-in" data-aos-easing="ease-in" data-aos-delay="0"
				data-aos-duration="650" data-aos-offset="250">
				<div class="image-wrapper opacity"><a href="javascript:;">
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
		</xsl:if>
		<xsl:if test="position()=3">
			<div class="col w-full md:w-8/12" data-aos="zoom-in" data-aos-easing="ease-in" data-aos-delay="0"
				data-aos-duration="650" data-aos-offset="250">
				<div class="image-wrapper opacity"><a href="javascript:;">
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
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>

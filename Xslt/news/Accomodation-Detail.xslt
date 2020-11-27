<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="accomodation-detail">
			<div class="container">
				<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
				<div class="accomodation-information">
					<xsl:apply-templates select="/NewsList/News" mode='Multi'></xsl:apply-templates>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Zone">


	</xsl:template>
	<xsl:template match="News" mode='Multi'>
		<xsl:if test="position()>1">

			<div class="row">
				<div class="col w-full md:w-5/12">
					<div class="content">
						<div class="section-title">
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
							<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
						</div>
						<div class="scollbar-wrap">
							<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
						</div>
					</div>
				</div>
				<div class="col w-full md:w-7/12">
					<div class="image-wrap"><a href="javascript:;"><img>
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
			</div>
		</xsl:if>

	</xsl:template>

	<xsl:template match="News">
		<xsl:if test="position()=1">

			<div class="section-title text-center">
				<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			</div>
			<div class="caption text-center">
				<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
			</div>
			<div class="chart-wrapper">
				<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
			</div>
			<div class="btn-center"><a class="btn btn-primary" href="javascript:;"><em
						class="mdi mdi-pencil"></em><span>Book
						now</span></a></div>
			<div class="swiper-top-wrap">
				<div class="hidden lg:block">
					<div class="nav-arrow-prev"><em class="lnr lnr-arrow-left"></em></div>
					<div class="nav-arrow-next"><em class="lnr lnr-arrow-right"></em></div>
				</div>
				<div class="swiper-container gallery-top">
					<div class="swiper-wrapper">
						<xsl:apply-templates select="NewsImages"></xsl:apply-templates>

					</div>
				</div>
			</div>
			<div class="swiper-bottom-wrap">
				<div class="swiper-container gallery-thumbs">
					<div class="swiper-wrapper">
						<xsl:apply-templates select="NewsImages"></xsl:apply-templates>

					</div>
				</div>
			</div>
			<div class="swiper-nav-wrap">
				<div class="nav-arrow-prev"><em class="lnr lnr-arrow-left"></em></div>
				<div class="nav-arrow-next"><em class="lnr lnr-arrow-right"></em></div>
			</div>
		</xsl:if>

	</xsl:template>
	<xsl:template match="NewsImages">
		<div class="swiper-slide">
			<div class="image-wrap">
				<img>
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				</img>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>

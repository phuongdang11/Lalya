<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/NewsList">
		<section class="wellness_detail-1">
			<div class="container"> 
				<div class="section-title text-center"> 
					<h1>
				 		<xsl:value-of select="ZoneTitle" disable-output-escaping="yes"/>
					</h1>
				</div>
				<div class="caption text-center">
						<xsl:value-of select="ZoneDescription" disable-output-escaping="yes"/>
				</div> 
				<xsl:if test="ImageUrl != ''">
					<div class="btn-center">
						<a class="btn btn-primary" href="#">
							<xsl:attribute name="href">
								<xsl:value-of select="ImageUrl"/>
							</xsl:attribute>
								<em class="mdi mdi-pencil"></em>
							<span>Book now</span>
						</a>
					</div> 
				</xsl:if>
				<xsl:apply-templates select="News"  /> 
			</div>
		</section> 
	</xsl:template>
	<xsl:template match="News" >

		<div class="row">
			<div class="col w-full lg:w-1/2">
				<div class="single-swiper">
					<div class="swiper-container">
						<div class="swiper-wrapper">
							<xsl:apply-templates select="NewsImages" mode="Swiper" />
						</div>
					</div>
					<div class="swiper-nav-wrap">
						<div class="nav-arrow-prev"><em class="lnr lnr-arrow-left"></em></div>
						<div class="nav-arrow-next"><em class="lnr lnr-arrow-right"></em></div>
					</div>
				</div>
			</div>
			<div class="col w-full lg:w-1/2">
				<div class="content">
					<div class="sub-title">
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					</div>
					<div class="scollbar-wrap">
						<div class="caption">
							<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
						</div>
					</div>
				</div>
			</div>
		</div> 
	</xsl:template>



	<xsl:template match="NewsImages" mode="Swiper">
		<div class="swiper-slide"> 
			<div class="img"> 
				<img src="./img/wellness/qwe.png" alt="">
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"/>
					</xsl:attribute>
					<xsl:attribute name="src"> 
						<xsl:value-of select="ImageUrl"/>
					</xsl:attribute>
				</img>
			</div>
		</div>
	</xsl:template>


</xsl:stylesheet>
  
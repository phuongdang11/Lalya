<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/NewsDetail"> 
		<section class="weeding-detail">
			<div class="container">
				<div class="section-title text-center">
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</div>
				<div class="flex justify-center bg-gray-200">
					<div class="text-gray-700 text-center px-4 m-2">
						<div class="book-now mdi mdi-pencil"><a href="">Book Now</a></div>
					</div>
				</div>
				<div class="item-1">
					<div class="row">
						<xsl:apply-templates select="NewsImages" mode="Small"/>
					</div>
					<div class="row">
						<xsl:apply-templates select="NewsImages" mode="Other"/>
					</div>
				</div> 
			</div>
			<div class="banner-detail" setBackground="./img/wedding/banner-detail.png">
				<xsl:attribute name="setBackground">
					<xsl:value-of select="NewsImages[position() = last()]/ImageUrl"/>
				</xsl:attribute>
				<div class="container">
					<div class="info-banner">
						<div class="text">
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</div>
						<div class="tittle">
							<xsl:value-of disable-output-escaping="yes" select="ZoneTitle"></xsl:value-of>
						</div>
						<div class="content">
							<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of> 
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="NewsImages" mode="Other">
		<xsl:if test=" position()  > 5 and position() != last()">
			<div class="col w-6/12 sm:w-6/12 md:w-6/12 lg:w-6/12">
				<div class="box-image zoom-in">
					<a href="./img/wedding/box-1.png" tittle="" data-fancybox="image-1">
						<xsl:attribute name="href">
							<xsl:value-of select="ImageUrl"/>
						</xsl:attribute>
						<xsl:attribute name="tittle">
							<xsl:value-of select="Title"/>
						</xsl:attribute>
						<img src="./img/wedding/box-1.png" alt="">
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"/> 
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"/>
							</xsl:attribute>
						</img>
					</a>
				</div>
			</div> 
		</xsl:if>
	</xsl:template>

	<xsl:template match="NewsImages" mode="Small">
		<xsl:if test="position() > 1 and position()  &lt; 5">
			<div class="col w-6/12 sm:w-4/12 md:w-4/12 lg:w-4/12">
				<div class="box-image zoom-in">
					<a href="./img/wedding/box-1.png" tittle="" data-fancybox="image-1">
						<xsl:attribute name="href">
							<xsl:value-of select="ImageUrl"/>
						</xsl:attribute>
						<xsl:attribute name="tittle">
							<xsl:value-of select="Title"/>
						</xsl:attribute>
						<img src="./img/wedding/box-1.png" alt="">
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"/> 
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"/>
							</xsl:attribute>
						</img>
					</a>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>

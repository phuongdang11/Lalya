<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/NewsDetail">
		<section class="special-list">
			<div class="container">
				<div class="section-title text-center py-6">
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</div>
				<div class="text-tittle text-center">
					<xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of>
				</div>
				<div class="item-1"></div>
				<div class="row">
					<div class="col w-ful zoom-inl  lg:w-1/2">
						<div class="image-item">
							<img src="./img/specialoffers/img-item1.png" alt="">
								<xsl:attribute name="src">
									<xsl:value-of select="NewsImages[1]/ImageUrl"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="alt"> 
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
							</img>
 
							</div>
					</div>
					<div class="col w-full lg:w-1/2">
						<div class="content-item">
							<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of> 
						</div>
					</div> 
				</div>
				<div class="section-title text-center py-10">Other special offers</div>
				<div class="item-2 slider">
					<div class="lnr-arrow-next"><i class="lnr lnr-arrow-right"></i></div>
					<div class="lnr-arrow-prev"><i class="lnr lnr-arrow-left"></i></div>
					<div class="Slide-special-detail swiper-container"> 
						<div class="swiper-wrapper">
							<xsl:apply-templates select="NewsOther"></xsl:apply-templates>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	
	<xsl:template match="NewsOther">
		<div class="swiper-slide">
			<div class="box">
				<div class="img-box zoom-in">
					<a href="">
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<img src="./img/specialoffers/box-1.png" alt="">
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
						</img>
					</a>
				</div>
				<div class="content-text">
					<div class="tittle-box">
						<a href="">
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
							<xsl:value-of select="Title"></xsl:value-of>
						</a>
					</div>
					<div class="text-box"> 
						<xsl:value-of select="BriefContent" disable-output-escaping="yes"  /> 
					</div>
					<div class="btn-left"><a class="btn btn-view-more" href="">
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute> <span>see more</span></a></div>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>

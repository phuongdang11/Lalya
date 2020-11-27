<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/NewsList">
		<div class="section-title text-center py-6">
			<xsl:value-of disable-output-escaping="yes" select="ZoneTitle" /> 
		</div> 
		<div class="item1">
			<div class="row">
				<div class="col w-full sm:w-12/12 md:w-8/12 lg:w-8/12">
					<div class="image-item">
						<a href="#" alt=""> 
							<xsl:attribute name="href">
								<xsl:value-of select="News[1]/Url" /> 
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="News[1]/Title" /> 
							</xsl:attribute>
							<img src="./img/specialoffers/layer1.png" alt="">
								<xsl:attribute name="src">
									<xsl:value-of select="News[1]/ImageUrl" /> 
								</xsl:attribute>
								<xsl:attribute name="alt">
									<xsl:value-of select="News[1]/Title" /> 
								</xsl:attribute>
							</img>
						</a>
					</div>
				</div> 
				<div class="col w-full sm:w-12/12 md:w-4/12 lg:w-4/12">
					<div class="text-item">
						<div class="tittle-item">
							<xsl:value-of select="News[1]/Title" /> 
						</div>
						<div class="text">
							<xsl:value-of select="News[1]/BriefContent" disable-output-escaping="yes"  /> 
						</div>
						<div class="btn-left">
							<a class="btn btn-view-more" href=""> 
								<xsl:attribute name="href">
									<xsl:value-of select="News[1]/Url" /> 
								</xsl:attribute>
								<xsl:attribute name="title">
									<xsl:value-of select="News[1]/Title" /> 
								</xsl:attribute>
								<span>see more</span>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="sec2-special">
			<div class="row">
				<xsl:apply-templates select="News"></xsl:apply-templates>
			</div>
		</div>
	</xsl:template>
	
	<xsl:template match="News">

		<div class="col w-full md:w-1/2 lg:w-4/12">
			<div class="box">
				<div class="img-box zoom-in">
					<a href="">
						<xsl:attribute name="href">
							<xsl:value-of select="Url" /> 
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title" /> 
						</xsl:attribute>
						<img src="./img/specialoffers/box-1.png" alt="">
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl" /> 
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title" /> 
							</xsl:attribute>
						</img>
					</a>
				</div>
				<div class="content-text">
					<div class="tittle-box">
						<a href="">
							<xsl:attribute name="href">
								<xsl:value-of select="Url" /> 
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title" /> 
							</xsl:attribute>
							<xsl:value-of select="Title" /> 
						</a>
					</div>
					<div class="text-box">
						<xsl:value-of select="BriefContent" disable-output-escaping="yes"  /> 
					</div>
					<div class="btn-left">
						<a class="btn btn-view-more" href="">
							<xsl:attribute name="href">
								<xsl:value-of select="Url" /> 
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title" /> 
							</xsl:attribute>
							 <span>see more</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>

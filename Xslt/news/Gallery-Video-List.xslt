<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/NewsList">
		<div class="item-1">
			<div class="row">
				<div class="col w-full md:w-12/12 lg:w-1/2">
					<div class="item-1-left">
						<div class="row">
							<xsl:apply-templates select="News[position() &lt; 3]" mode="Big"/>
						</div>
					</div>
				</div>
				<div class="col w-full md:w-12/12 lg:w-1/2">
					<div class="item-1-right">
						<div class="row">
							<xsl:apply-templates select="News[position() > 3 and position() &lt; 7]" mode="Small"/> 
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col w-full md:w-12/12 lg:w-1/2">
					<div class="item-1-left">
						<div class="row">
							<xsl:apply-templates select="News[position() > 6 and position() &lt; 11]" mode="Big"/>
						</div>
					</div>
				</div>
				<div class="col w-full md:w-12/12 lg:w-1/2">
					<div class="item-1-right">
						<div class="row">
							<xsl:apply-templates select="News[position() > 10 ]" mode="Small"/>  
						</div>
					</div>
				</div>
			</div>
		</div>
	</xsl:template> 
	<xsl:template match="News" mode="Small">
		<div class="col w-full sm:w-1/2 md:w-6/12 lg:w-1/2">
			<div class="box-small">
				<div class="img-item1 zoom-in">
					<a >
						<xsl:attribute name="href">
							<xsl:value-of select="SubTitle"/> 
						</xsl:attribute>
						<xsl:attribute name="data-fancybox">
							<xsl:text>image-news-</xsl:text>
							<xsl:value-of select="NewsId"/>
						</xsl:attribute>
						<img src="./img/gallery/box-1.png" alt="">
							<xsl:attribute name="src">
								<xsl:value-of select="NewsImages[1]/ImageUrl"/>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="NewsImages[1]/Title"/> 
							</xsl:attribute>
						</img> 
						<div class="icon-play">
							<span class="mdi mdi-play-circle-outline"></span>
						</div>
					</a>
				</div> 
				<div class="text-item">
					<a data-fancybox="image-1" alt="">
						<xsl:attribute name="href">
							<xsl:value-of select="SubTitle"/> 
						</xsl:attribute>
						<xsl:attribute name="data-fancybox">
							<xsl:text>image-news-</xsl:text>
							<xsl:value-of select="NewsId"/>
						</xsl:attribute> 
						<xsl:value-of select="Title"/> 
					</a>
				</div>
			</div> 
			<div style="display:none">
				<xsl:apply-templates select="NewsImages" /> 
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="Big">
		<div class="col w-full sm:w-6/12 md:w-1/2 lg:w-1/2">
			<div class="box-large">
				<div class="img-box-large zoom-in">
					<a href="./img/gallery/box-1.png" data-fancybox="image-1" alt="">
						<xsl:attribute name="href">
							<xsl:value-of select="SubTitle"/> 
						</xsl:attribute>
						<xsl:attribute name="data-fancybox">
							<xsl:text>image-news-</xsl:text>
							<xsl:value-of select="NewsId"/>
						</xsl:attribute>
						<img src="./img/gallery/box-1.png" alt="">
							<xsl:attribute name="src">
								<xsl:value-of select="NewsImages[1]/ImageUrl"/>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="NewsImages[1]/Title"/> 
							</xsl:attribute>
						</img>
						<div class="icon-play">
							<span class="mdi mdi-play-circle-outline"></span>
						</div>
					</a>
				</div> 
				<div class="text-item">
					<a data-fancybox="image-1" alt="">
						<xsl:attribute name="href">
							<xsl:value-of select="NewsImages[1]/ImageUrl"/>
						</xsl:attribute>
						<xsl:attribute name="data-fancybox">
							<xsl:text>image-news-</xsl:text>
							<xsl:value-of select="NewsId"/>
						</xsl:attribute> 
						<xsl:value-of select="Title"/> 
					</a>
				</div>
			</div>
			<div style="display:none">
				<xsl:apply-templates select="NewsImages" /> 
			</div>
		</div>
	</xsl:template>
	<xsl:template match="NewsImages">
		<xsl:if test="position() > 1">
			<a> 
				<xsl:attribute name="href">
					<xsl:value-of select="ImageUrl"/>
				</xsl:attribute>
				<xsl:attribute name="data-fancybox">
					<xsl:text>image-news-</xsl:text>
					<xsl:value-of select="../NewsId"/>
				</xsl:attribute>  
				<img >
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"/>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"/> 
					</xsl:attribute> 
				</img>
			</a>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>

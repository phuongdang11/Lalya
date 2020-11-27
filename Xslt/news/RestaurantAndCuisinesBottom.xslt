<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/ZoneList"> 
		<div class="section-1"> 
			<xsl:apply-templates select="Zone[position() = 2]" mode="Zone2"/> 
			<xsl:apply-templates select="Zone[position() > 2]" mode="Zone3"/> 
		</div>
	</xsl:template>

	<xsl:template match="Zone" mode="Zone2"> 
		<div class="row"> 
			<xsl:apply-templates select="News" mode="Zone2-News"/>
		</div>
	</xsl:template>
	<xsl:template match="Zone" mode="Zone3"> 
		<div class="row"> 
			<xsl:apply-templates select="News" mode="Zone3-News"/>
		</div>
	</xsl:template>

	<xsl:template match="News" mode="Zone2-News">
		<xsl:choose>
		  <xsl:when test="position() = 1">
		  	<div class="col w-full sm:w-1/2 lg:w-8/12">
				<div class="image-content">
					<img src="./img/restaurant/box-2.png" alt="">
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"/> 
						</xsl:attribute>
					</img>
				</div>
			</div>
			<div class="col w-full sm:w-1/2 lg:w-4/12">
				<div class="text-content">
					<div class="tittle">
						<xsl:value-of select="Title"/> 
						<xsl:value-of select="EditLink" disable-output-escaping="yes"/> 
					</div>
					<div class="text">
						<xsl:value-of select="BriefContent" disable-output-escaping="yes"/> 
					</div>
				</div> 
			</div>
		  </xsl:when>
		  <xsl:otherwise>
		  	<div class="col w-1/2 sm:w-1/2 md:w-3/12 lg:w-3/12">
				<div class="image-small zoom-in">
					<a href="./img/restaurant/small-1.png" data-fancybox="image-1" alt=""> 
						<xsl:attribute name="href">
							<xsl:value-of select="ImageUrl"/> 
						</xsl:attribute>
						<xsl:attribute name="data-fancybox">
							<xsl:text>image-</xsl:text>
							<xsl:value-of select="NewsId"/> 
						</xsl:attribute>
					  <img src="./img/restaurant/small-1.png" alt="">
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"/> 
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"/>  
						</xsl:attribute>
					</img> 
				  </a>
				</div>
				<div class="info text-center"> 
					<xsl:value-of select="Title"/>  
						<xsl:value-of select="EditLink" disable-output-escaping="yes"/> 
				</div>
			</div>
		  </xsl:otherwise>
		</xsl:choose>
		
	</xsl:template>
	<xsl:template match="News" mode="Zone3-News">
		<xsl:choose>
		  <xsl:when test="position() = 1">
		  	<div class="col w-full sm:w-1/2 lg:w-8/12">
				<div class="image-content">
					<img src="./img/restaurant/box-2.png" alt="">
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"/> 
						</xsl:attribute>
					</img>
				</div>
			</div>
			<div class="col w-full sm:w-1/2 lg:w-4/12">
				<div class="text-content">
					<div class="tittle">
						<xsl:value-of select="Title"/> 
						<xsl:value-of select="EditLink" disable-output-escaping="yes"/> 
					</div>
					<div class="text">
						<xsl:value-of select="BriefContent" disable-output-escaping="yes"/> 
					</div>
				</div> 
			</div>
		  </xsl:when>
		  <xsl:otherwise>
		  	<div class="col w-1/2 sm:w-1/2 md:w-4/12 lg:w-4/12">
				<div class="image-small zoom-in">
					<a href="./img/restaurant/small-1.png" data-fancybox="image-1" alt=""> 
						<xsl:attribute name="href">
							<xsl:value-of select="ImageUrl"/> 
						</xsl:attribute>
						<xsl:attribute name="data-fancybox">
							<xsl:text>image-</xsl:text>
							<xsl:value-of select="NewsId"/> 
						</xsl:attribute>
					  <img src="./img/restaurant/small-1.png" alt="">
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"/> 
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"/>  
						</xsl:attribute>
					</img> 
				  </a>
				</div>
				<div class="info text-center"> 
					<xsl:value-of select="Title"/>  
						<xsl:value-of select="EditLink" disable-output-escaping="yes"/> 
				</div>
			</div>
		  </xsl:otherwise>
		</xsl:choose>
		
	</xsl:template>
</xsl:stylesheet>

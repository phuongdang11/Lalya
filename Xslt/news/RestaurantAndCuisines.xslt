<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/ZoneList"> 
		<div class="section-title text-center">
			<xsl:value-of select="ZoneTitle" />
		</div>
		<div class="zone-description text-center">
			<xsl:value-of select="ZoneDescription" />
		</div>
		<xsl:if test="ImageUrl != ''">
			<div class="flex justify-center bg-gray-200">
				<div class="text-gray-700 text-center px-4 m-2">
					<div class="brochure fa fa-file">
						<a href="">
							<xsl:attribute name="href">
								<xsl:value-of select="ImageUrl"/> 
							</xsl:attribute>
							Brochure
						</a>
					</div>
				</div> 
			</div>
		</xsl:if>
		<div class="form-menu bg-w">
			<xsl:value-of select="Zone[1]/News[1]/FullContent" disable-output-escaping="yes"/> 
		</div>
		<div class="content">
			<div class="row">
				<div class="col w-full sm:w-1/2 lg:w-8/12">
					<div class="image-content">
						<img src="./img/restaurant/box-1.png" alt="">
							<xsl:attribute name="alt">
								<xsl:value-of select="Zone[1]/News[1]/Title"/>
							</xsl:attribute>
							<xsl:attribute name="src">
								<xsl:value-of select="Zone[1]/News[1]/ImageUrl"/>
							</xsl:attribute>
						</img>
					</div>
				</div>
				<div class="col w-full sm:w-1/2 lg:w-4/12">
					<div class="text-content">
						<div class="tittle">
							<xsl:value-of select="Zone[1]/News[1]/Title" disable-output-escaping="yes"/> 
						</div>
						<div class="text">  
							<xsl:value-of select="Zone[1]/News[1]/BriefContent" disable-output-escaping="yes"/> 
						</div>
					</div>
				</div>
			</div>
		</div> 
	</xsl:template>
</xsl:stylesheet>

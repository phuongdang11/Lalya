<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/ZoneList">
		<div class="section-title text-center">
			<xsl:value-of disable-output-escaping="yes" select="Title"/> 
		</div> 
		<div class="tags-link">
			<ul>
				<xsl:apply-templates select="Zone" />
			</ul>
		</div>
	</xsl:template> 
	<xsl:template match="Zone">
		<li class="">
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="class">
					<xsl:text>active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<a href="">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"/>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"/>
				</xsl:attribute>
				<xsl:value-of select="Title"/>
			</a>
		</li>
	</xsl:template> 
</xsl:stylesheet>

<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/ZoneList"> 

		<div class="section-title text-center">
			<xsl:value-of disable-output-escaping="yes" select="ZoneTitle"></xsl:value-of>
		</div>
		<div class="zone-description text-center">
			<xsl:value-of disable-output-escaping="yes" select="ZoneDescription"></xsl:value-of> 
		</div>
		<xsl:if test="ImageUrl != ''"> 
			<div class="flex justify-center bg-gray-200">
				<div class="text-gray-700 text-center px-4 m-2">
					<div class="brochure fa fa-file">
						<a href="">
							<xsl:attribute name="href">
								<xsl:value-of disable-output-escaping="yes" select="ImageUrl"></xsl:value-of> 
							</xsl:attribute>
							Brochure
						</a>
					</div>
				</div>
			</div>
		</xsl:if>
		<div class="item1"> 
			<div class="row">   
				<div class="col w-full sm:w-1/2  lg:w-8/12">
					<div class="image-item">
						<a href="#" alt="">
							<xsl:attribute name="href">
								<xsl:value-of disable-output-escaping="yes" select="Zone[1]/News[1]/Url"></xsl:value-of>  
							</xsl:attribute> 
							<xsl:attribute name="title">
								<xsl:value-of  select="Zone[1]/News[1]/Title"></xsl:value-of> 
							</xsl:attribute>
							<img src="./img/meeting/item-1.png" alt="">
								<xsl:attribute name="src">
									<xsl:value-of  select="Zone[1]/News[1]/ImageUrl"></xsl:value-of> 
								</xsl:attribute>
								<xsl:attribute name="alt">
									<xsl:value-of  select="Zone[1]/News[1]/Title"></xsl:value-of> 
								</xsl:attribute>
							</img>
						</a>
					</div>
				</div>
				<div class="col w-full sm:w-1/2  lg:w-4/12">
					<div class="text-item">
						<a href="#" class="tittle-item">
							<xsl:attribute name="href">
								<xsl:value-of disable-output-escaping="yes" select="Zone[1]/News[1]/Url"></xsl:value-of>  
							</xsl:attribute> 
							<xsl:attribute name="title">
								<xsl:value-of  select="Zone[1]/News[1]/Title"></xsl:value-of> 
							</xsl:attribute> 
							<xsl:value-of  select="Zone[1]/News[1]/Title"></xsl:value-of> 
						</a>
						<div class="text"> 
							<xsl:value-of disable-output-escaping="yes" select="Zone[1]/News[1]/FullContent"></xsl:value-of> 
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="tab-links tab-navigation">
			<ul>
				<xsl:apply-templates select="Zone[position() > 1]" mode="Tab"/> 
			</ul>
		</div>
		<div class="tab-wrapper">
			<xsl:apply-templates select="Zone[position() > 1]" mode="TabContent" />
		</div>
	</xsl:template>

	<xsl:template match="Zone" mode="Tab">
		<li class="">
			<xsl:if test="position() = 1">
				<xsl:attribute name="class">
					<xsl:text>active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<a href="javascript:;" data-type="tab-1">
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="data-type">
					<xsl:text>tab-</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title"></xsl:value-of>
			</a>
		</li>
	</xsl:template>

	<xsl:template match="Zone" mode="TabContent">

		<div class="content tab-item " id="tab-1">
			<xsl:if test="position() = 1">
				<xsl:attribute name="class">
					<xsl:text>content tab-item active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="id">
				<xsl:text>tab-</xsl:text>
				<xsl:value-of select="position()"></xsl:value-of>
			</xsl:attribute>
				<xsl:apply-templates select="News" />
		</div>
	</xsl:template>

	<xsl:template match="News">
		<div class="row">
			<div class="col w-full sm:w-1/2 lg:w-4/12">
				<div class="text-content">
					<div class="tittle">
						<xsl:value-of select="Title"></xsl:value-of>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</div>
					<div class="text"> 
						<xsl:value-of disable-output-escaping="yes" select="Zone[1]/News[1]/FullContent"></xsl:value-of> 
					</div>
					<div class="btn-left">
						<a class="btn btn-view-more" href="#">
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<span>See more</span>
						</a>
					</div> 
				</div>
			</div>
			<div class="col w-full sm:w-1/2 lg:w-8/12">
				<div class="image-content">
					<a href="" alt="">
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<img src="./img/meeting/item-2.png" alt="">
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
						</img>
					</a>
				</div> 
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>

<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="accomodation-list">
			<div class="full-box container">
				<div class="section-title text-center">
					<xsl:value-of disable-output-escaping="yes" select="/ZoneList/RootTitle"></xsl:value-of>
				</div>
				<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
				<div class="row">
					<xsl:apply-templates select="/ZoneList/Zone" mode='Double'></xsl:apply-templates>
				</div>
				<xsl:apply-templates select="/ZoneList/Zone" mode='Single'></xsl:apply-templates>

				<!-- <div class="row">
					<xsl:apply-templates select="/ZoneList/Zone" mode='Double-2'></xsl:apply-templates>
				</div>
				<xsl:apply-templates select="/ZoneList/Zone" mode='Single-Last'></xsl:apply-templates> -->
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Zone">
		<xsl:if test="position()=1">
			<div class="accomodation-big">
				<div class="image-wrap opacity">
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<img class="lazyload">
						<xsl:attribute name="data-src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						</img>
					</a>
				</div>
				<div class="sub-title text-center">
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					</a>

				</div>
				<div class="box-caption caption text-center">
					<xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
				</div>
				<div class="btn-center"><a class="btn btn-view-more">
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<span>See more</span>
					</a></div>
			</div>
		</xsl:if>

	</xsl:template>
	<xsl:template match="Zone" mode='Double'>
		<xsl:if test="position() >1 and position() &lt;4">
			<div class="col w-full lg:w-1/2">
				<div class="item">
					<div class="image-wrap zoom-in">
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<img class="lazyload">
							<xsl:attribute name="data-src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							</img>
						</a>

					</div>
					<div class="content">
						<div class="title text-center py-2">
							<a>
								<xsl:attribute name="href">
									<xsl:value-of select="Url"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="title">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
								<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
							</a>
						</div>
						<div class="box-caption caption text-center">
							<xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
						</div>
						<div class="btn-center py-5"><a class="btn btn-view-more">
								<xsl:attribute name="href">
									<xsl:value-of select="Url"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="title">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
								<span>View
									more</span>
							</a></div>
					</div>
				</div>
			</div>
		</xsl:if>

	</xsl:template>
	<xsl:template match="Zone" mode='Single'>
		<xsl:if test="position()=4">
			<div class="accomodation-big">
				<div class="image-wrap opacity">
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<img class="lazyload">
						<xsl:attribute name="data-src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						</img>
					</a>
				</div>
				<div class="sub-title text-center">
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					</a>

				</div>
				<div class="box-caption caption text-center">
					<xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
				</div>
				<div class="btn-center"><a class="btn btn-view-more">
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<span>See more</span>
					</a></div>
			</div>
		</xsl:if>

	</xsl:template>
	<xsl:template match="Zone" mode='Double-2'>
		<xsl:if test="position() >4 and position() &lt;6">
			<div class="col w-full lg:w-1/2">
				<div class="item">
					<div class="image-wrap zoom-in">
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<img>
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							</img>
						</a>
					</div>
					<div class="content">
						<div class="title text-center py-2">
							<a>
								<xsl:attribute name="href">
									<xsl:value-of select="Url"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="title">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
								<xsl:value-of disable-output-escaping="yes" select="title"></xsl:value-of>
							</a>
						</div>
						<div class="box-caption caption text-center">
							<xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
						</div>
						<div class="btn-center py-5"><a class="btn btn-view-more">
								<xsl:attribute name="href">
									<xsl:value-of select="Url"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="title">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
								<span>View more</span>
							</a></div>
					</div>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>

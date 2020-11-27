<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="pages-news_event_list">
			<div class="container">
				<div class="section-title text-center">
					<h1>
						<xsl:value-of disable-output-escaping="yes" select="/NewsList/ZoneTitle"></xsl:value-of>
					</h1>
				</div>
				<div class="row">
					<div class="col w-full md:w-1/2 sm:w-full">
						<xsl:apply-templates select="/NewsList/News" mode='Big'></xsl:apply-templates>
					</div>
					<div class="col w-full md:w-1/2 sm:w-full">
						<div class="row">
							<xsl:apply-templates select="/NewsList/News" mode='Side'></xsl:apply-templates>

						</div>
					</div>
					<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>

				</div>

			</div>
		</section>
	</xsl:template>
	<xsl:template match="News" mode='Big'>
		<xsl:if test="position()=1">
			<div class="item big">
				<div class="img zoom-in">
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
					<div class="date">
						<p>
							<xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
						</p>
					</div>
					<div class="title">
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
					<div class="caption">
						<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
					</div>
				</div>
			</div>
		</xsl:if>

	</xsl:template>
	<xsl:template match="News" mode='Side'>
		<xsl:if test="position()>1 and position() &lt;6">

			<div class="col w-full md:w-1/2 sm:w-1/2">
				<div class="item side">
					<div class="img opacity">
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
						<div class="date">
							<p>
								<xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
							</p>
						</div>
						<div class="title">
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
					</div>
				</div>
			</div>
		</xsl:if>

	</xsl:template>
	<xsl:template match="News">
		<xsl:if test="position()>5 and position() &lt; 9">

			<div class="col w-full sm:w-1/2 md:w-1/3">
				<div class="item normal">
					<div class="img opacity">
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
						<div class="date">
							<p>
								<xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
							</p>
						</div>
						<div class="title">
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
					</div>
				</div>
			</div>
		</xsl:if>

	</xsl:template>
</xsl:stylesheet>

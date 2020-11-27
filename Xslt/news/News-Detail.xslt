<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/NewsDetail">
		<section class="pages-news_event_detail">
			<div class="container">
				<div class="row">
					<div class="col w-full lg:w-9/12">
						<div class="article-wrapper">
							<div class="article-header">
								<div class="title">
									<h1>
										<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
										<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
									</h1>
								</div>
								<div class="wrapper">
									<div class="date">
										<p>
											<xsl:value-of disable-output-escaping="yes" select="CreatedDate">
											</xsl:value-of>
										</p>
									</div>
									<div class="social-wrap">
										<div class="icon">
											<a target="_blank">
												<xsl:attribute name='href'>
													<xsl:text>https://www.facebook.com/sharer/sharer.php?u=</xsl:text>
													<xsl:value-of select='/NewsDetail/FullUrl'></xsl:value-of>
												</xsl:attribute>
												<em class="fab fa-facebook-square"></em>
											</a></div>
										<div class="icon"><a target="_blank">
												<xsl:attribute name='href'>
													<xsl:text>https://twitter.com/intent/tweet?text=</xsl:text>
													<xsl:value-of select='/NewsDetail/FullUrl'></xsl:value-of>
												</xsl:attribute>
												<em class="fab fa-twitter"> </em>
											</a></div>
									</div>
								</div>
							</div>
							<div class="article-content">
								<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
							</div>
						</div>
					</div>
					<div class="col w-full lg:w-3/12">
						<div class="other-news">
							<div class="title">
								<h2>Other news - events </h2>
							</div>
							<div class="wrapper">
								<xsl:apply-templates select="NewsOther"></xsl:apply-templates>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="NewsOther">
		<div class="item">


			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>

				</xsl:attribute>
				<time>
					<xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
				</time>
				<div class="title">
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</div>
			</a>

		</div>
	</xsl:template>

</xsl:stylesheet>

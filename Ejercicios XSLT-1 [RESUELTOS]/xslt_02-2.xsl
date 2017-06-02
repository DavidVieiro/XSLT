<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

	<xsl:template match='/'>
		<xsl:element name="html">
			<xsl:apply-templates />
		</xsl:element>
	</xsl:template>

	<xsl:template match="ies">
		<xsl:element name="h1">
			<xsl:value-of select="@nombre" />
		</xsl:element>
		<xsl:element name="p">
			<xsl:text>Página web:</xsl:text>
			<xsl:element name="a">
				<xsl:attribute name="href">
					<xsl:value-of select="@web" />
				</xsl:attribute>
				<xsl:value-of select="@web" />
			</xsl:element>
		</xsl:element>
		<xsl:element name="ul">
			<xsl:apply-templates />
		</xsl:element>
	</xsl:template>

	<xsl:template match="ciclo">
		<xsl:element name="li">
			<xsl:value-of select="nombre"/>
		</xsl:element>
	</xsl:template>

</xsl:stylesheet>

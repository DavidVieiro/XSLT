<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	
	<xsl:template match="ies">
		<xsl:element name="html">
			<xsl:element name="h1">
				<xsl:value-of select="@nombre" />
			</xsl:element>
			<xsl:element name="p">
				<xsl:text>Página web: http://www.iesabastos.org</xsl:text>
			</xsl:element>
			<xsl:element name="ul">
				<xsl:apply-templates />
			</xsl:element>
		</xsl:element>
		
	</xsl:template>
	
	<xsl:template match="ciclo">
		<xsl:element name="li">
			<xsl:value-of select="nombre" />
		</xsl:element>
	</xsl:template>
	
</xsl:stylesheet>
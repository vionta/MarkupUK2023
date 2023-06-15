<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                version="3.0"
                >

  <xsl:template match="@*|node()">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
    </xsl:copy>
  </xsl:template>

  <!--
  <xsl:template match="description" />
  -->
  <xsl:template match="item[not(.//label/text()='Arq_Plataforma') and not(.//label/text()='Arq_Mantenimiento')]"></xsl:template>


</xsl:stylesheet>

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

  <xsl:template match="item[not(.//type/text()='Oficina de Datos')]"></xsl:template>
  

  <!-- Dejamos fuera las peticiones de Post Venta (Estela) -->
  <!--
  <xsl:template match="item[not(.//label/text()='post-venta')]"></xsl:template>
  -->
  <!-- Dejamos fuera las peticiones de Arquitectura Plataforma -->
  <!--
  <xsl:template match="item[.//label/text()='Arq_Plataforma']"></xsl:template>
  <xsl:template match="item[.//label/text()='Arq_Mantenimiento']"></xsl:template>
  <xsl:template match="item[.//label/text()='Aperturas']"></xsl:template>
  <xsl:template match="item[.//type/text()='Test Execution']"></xsl:template>
-->
</xsl:stylesheet>

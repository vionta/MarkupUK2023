<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:arimp="http://www.vionta.net/schemas/arousa-import/v1.0/arousa-import.xsd"
    version="3.0"
    >

  <xsl:output method="xml" encoding="utf-8" indent="yes"/>

  <xsl:template match="/">
    <ivy-module version="1.1">

      <xsl:copy-of select="//*:info" />
      <xsl:copy-of select="//*:configurations" />
      
      <publications>
	<xsl:apply-templates select="//arimp:publication" />
      </publications>
      
      <dependencies defaultconf="default">
	<xsl:apply-templates select="//arimp:dependency" />
      </dependencies>
      
    </ivy-module>

  </xsl:template>


  <xsl:template match="arimp:publication">
    <artifact name="{@artifact-name}" type="transformation" ext="xsl" conf="default"/>
  </xsl:template>

  <xsl:template match="arimp:dependency" >
    <dependency org="{@org}" name="{@component}" rev="{@rev}" >
      <artifact name="{@artifact}" type="transformation" ext="xsl" />
    </dependency>
  </xsl:template>

  <xsl:template match="text()"></xsl:template>

</xsl:stylesheet>

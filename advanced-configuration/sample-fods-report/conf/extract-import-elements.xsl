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
	<!--
	    <xsl:copy-of select="//*:dependency" />
	    -->
	<xsl:variable name="dependencies" select="/" />
	<xsl:for-each select="distinct-values(//*:dependency/@*:component)" >
	<xsl:variable name="comp" select="." />

	  <!-- This may need to be adjusted on complex cases -->

	  <xsl:variable name="current-dep" select="$dependencies//*:dependency[@*:component = $comp][1]" /> 

	  <dependency org="{$current-dep[1]/@*:org}" name="{$comp}" rev="{$current-dep[1]/@*:rev}" >	
	    <xsl:for-each select="$dependencies//*:dependency[@*:component = $comp]" >
	      <artifact name="{@*:artifact}" type="transformation" ext="xsl" />
	    </xsl:for-each>
	  </dependency>
	</xsl:for-each>
      </dependencies>
      </ivy-module>
    </xsl:template>

  <xsl:template match="text()"></xsl:template>

</xsl:stylesheet>

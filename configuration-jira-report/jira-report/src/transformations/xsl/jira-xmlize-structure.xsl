<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xhtml="http://www.w3.org/1999/xhtml"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
		xmlns:fn="http://www.w3.org/2005/xpath-functions"
		version="3.0"
                >

  <xsl:variable name="sustituir">¿&#39;?</xsl:variable>
  <xsl:variable name="sustit">áéíóúÁÉÍÓU</xsl:variable>
  <xsl:variable name="sustituto">aeiouAEIOU</xsl:variable>

  <xsl:variable name="lowercase" select="'abcdefghijklmnopqrstuvwxyz'" />
  <xsl:variable name="uppercase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'" />
  <xsl:variable name="apos"  >'</xsl:variable>
  
  <xsl:template match="/">
    <rss>
      <channel>
      <xsl:apply-templates select="/rss/channel/item"/>
      </channel>
    </rss>
  </xsl:template>

  <xsl:template match="description|link" >
    <xsl:copy><xsl:apply-templates /></xsl:copy>
  </xsl:template>

  <xsl:template match="created|updated|due|resolved">
    <xsl:if test="text()">
    <xsl:copy>
      <xsl:variable name="preyear" select="substring(text(),44  - string-length(.), 4)" />
      <xsl:variable name="predate" select="substring(text(),6  ,  (string-length(.)  -  29))" />
      <xsl:choose>
	<xsl:when test="contains($preyear, ' ')" >20<xsl:value-of select="substring($preyear,1, 2)" /></xsl:when>
	<xsl:otherwise ><xsl:value-of select="$preyear" /></xsl:otherwise>
      </xsl:choose>-<xsl:choose>
	<xsl:when test="contains(text(), 'Jan')" >01</xsl:when>
	<xsl:when test="contains(text(), 'Feb')" >02</xsl:when>
	<xsl:when test="contains(text(), 'Mar')" >03</xsl:when>
	<xsl:when test="contains(text(), 'Apr')" >04</xsl:when>
	<xsl:when test="contains(text(), 'May')" >05</xsl:when>
	<xsl:when test="contains(text(), 'Jun')" >06</xsl:when>
	<xsl:when test="contains(text(), 'Jul')" >07</xsl:when>
	<xsl:when test="contains(text(), 'Aug')" >08</xsl:when>
	<xsl:when test="contains(text(), 'Sep')" >09</xsl:when>
	<xsl:when test="contains(text(), 'Oct')" >10</xsl:when>
	<xsl:when test="contains(text(), 'Nov')" >11</xsl:when>
	<xsl:when test="contains(text(), 'Dec')" >12</xsl:when>
	</xsl:choose>-<xsl:choose>
	<xsl:when test="string-length($predate) eq 1" >0<xsl:value-of select="$predate" /></xsl:when>
	<xsl:otherwise ><xsl:value-of select="$predate" /></xsl:otherwise>
      </xsl:choose>
    </xsl:copy>
    </xsl:if>
  </xsl:template>
  
  <xsl:template match="element()">
    <xsl:copy-of select="." />
  </xsl:template>
    
  <xsl:template match="item">
    <item>
      <xsl:apply-templates/>
    </item>
  </xsl:template>
  
  <xsl:template match="attachments|subtasks|Aprobaciones" ></xsl:template>
   
 <xsl:template match="customfields">
   <xsl:for-each select="customfield" >
     <xsl:variable name="field_name" select="translate(translate(translate(translate(translate(translate(translate(customfieldname/text(), '&#243;&#225;', 'oa' ), ' ', '_'), '()/', ''), '&#191;', ''), '?' , '' ), $sustituir, '_'), $sustit, $sustituto)" />
     <xsl:element name="{$field_name}" namespace=""  ><xsl:for-each select="customfieldvalues/customfieldvalue"><xsl:if test="preceding-sibling::customfieldvalue" >,</xsl:if><xsl:value-of select="text()" /></xsl:for-each></xsl:element>
   </xsl:for-each>
 </xsl:template>
  
 <xsl:template match="text()" />

</xsl:stylesheet>

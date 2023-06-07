<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    version="3.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
    xmlns:xsd="http://www.w3.org/2001/XMLSchema"
    xmlns:arimp="http://www.vionta.net/schemas/arousa-import/v1.0/arousa-import.xsd"
    exclude-result-prefixes="arimp"
    >

  <!--
  <arimp:dependency artifact-name="fods-frame"   />
  -->
  <xsl:import href="fods-frame.xsl" />
  <arimp:publication artifact-name="fods-horizontal"   />

  <xsl:template match="/" >
    <xsl:variable name="vheaders" >
        <xsl:call-template name="headers" >
	  <xsl:with-param name="data" select="." />
	</xsl:call-template>
    </xsl:variable>

    <xsl:variable name="rows" >
      <xsl:call-template name="dataAsRows" >
	<xsl:with-param name="data" select="." />
      </xsl:call-template>
    </xsl:variable>
    
    <xsl:call-template name="frame" >
      <xsl:with-param name="headers" select="$vheaders" />
      <xsl:with-param name="content" select="%rows" />
    </xsl:call-template>
  </xsl:template>

  <xsl:template name="headers" >
    <xsl:param name="data" />
    <table:table-row table:style-name="ro1" xmlns:table="urn:oasis:names:tc:opendocument:xmlns:table:1.0" xmlns:text="urn:oasis:names:tc:opendocument:xmlns:text:1.0" xmlns:office="urn:oasis:names:tc:opendocument:xmlns:office:1.0" xmlns:calcext="urn:org:documentfoundation:names:experimental:calc:xmlns:calcext:1.0" >
      <xsl:for-each select="$data/*[1]/*[1]/*" >
        <table:table-cell office:value-type="string" calcext:value-type="string">
          <text:p><xsl:value-of select="local-name()" /></text:p>
        </table:table-cell>
      </xsl:for-each>
    </table:table-row>
  </xsl:template>

  <xsl:template name="dataAsRows" >
    <xsl:param name="data" />
    <xsl:for-each select="$data/*[1]/*" >
      <table:table-row table:style-name="ro1" xmlns:table="urn:oasis:names:tc:opendocument:xmlns:table:1.0" xmlns:text="urn:oasis:names:tc:opendocument:xmlns:text:1.0" xmlns:office="urn:oasis:names:tc:opendocument:xmlns:office:1.0" xmlns:calcext="urn:org:documentfoundation:names:experimental:calc:xmlns:calcext:1.0" >
	<xsl:for-each select="*" >
	  <table:table-cell office:value-type="string" calcext:value-type="string">
	    <text:p><xsl:value-of select="text()" /></text:p>
	  </table:table-cell>
	</xsl:for-each>
      </table:table-row>
    </xsl:for-each>
  </xsl:template>

</xsl:stylesheet>


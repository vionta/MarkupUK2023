<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    version="3.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
    xmlns:xsd="http://www.w3.org/2001/XMLSchema"
    xmlns:arimp="http://www.vionta.net/schemas/arousa-import/v1.0/arousa-import.xsd"
    >
  
  <xsl:import href="../../deps/fods-vertical.xsl" />

  <xsl:template match="/" >
    <xsl:call-template name="fods-export" >
      <xsl:with-param name="data" select="." />
    </xsl:call-template>
  </xsl:template>
  
</xsl:stylesheet>



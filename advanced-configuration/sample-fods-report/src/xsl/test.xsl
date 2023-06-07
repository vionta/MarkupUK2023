<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    version="3.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
    xmlns:xsd="http://www.w3.org/2001/XMLSchema"
    xmlns:arimp="http://www.vionta.net/schemas/arousa-import/v1.0/arousa-import.xsd"
    >


 <arimp:dependency
      component="lineal-fods" org="net.vionta.transformation.spreadsheet"
      rev="1.0" artifact="fods-vertical" />


 <arimp:dependency
      component="lineal-fods" org="net.vionta.transformation.spreadsheet"
      rev="1.0" artifact="fods-frame" />

  <xsl:import href="../../lib/fods-vertical.xsl" />

  <xsl:template match="/" >
    <xsl:call-template name="fods-export" >
      <xsl:with-param name="data" select="." />
    </xsl:call-template>
  </xsl:template>
  
</xsl:stylesheet>



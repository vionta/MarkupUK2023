<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:xsd="http://www.w3.org/2001/XMLSchema"
  version="3.0"
  >

  <xsl:output  version="1.0" encoding="utf-8" indent="yes"
               omit-xml-declaration="no"
               media-type="text/html"
               doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"
               doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN"/>

  <xsl:param name="report-title" >Report</xsl:param>

  <xsl:template match="/">
    <html>
      <head><title><xsl:value-of select="$report-title" /></title>
      </head>
      <body>
	<xsl:copy-of select="." />
      </body>
  </html>
</xsl:template>

</xsl:stylesheet>

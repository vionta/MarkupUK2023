<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >

  <xsl:template match="/">
    <rss>
      <xsl:copy select="@version" />
      <channel>
	<xsl:copy-of select="/rss/channel/*[((local-name()!='build-info') and (local-name() != item))] "  />
	<xsl:copy-of select="/rss/channel/build-info" />
	  <xsl:copy-of select="/rss/channel/item[.//label/text()='v.9.0.0.0']"/>
      </channel>
    </rss>
  </xsl:template>

  
</xsl:stylesheet>

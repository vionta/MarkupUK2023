<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >

  <xsl:param name="fixversion" />

  <xsl:template match="/">
    <rss>
      <xsl:copy select="@version" />
      <channel>
	<xsl:copy-of select="/rss/channel/*[((local-name()!='build-info') and (local-name() != item))] "  />
	<xsl:copy-of select="/rss/channel/build-info" />
	  <xsl:copy-of select="/rss/channel/item[.//fixVersion/text()=$fixversion]"/>
      </channel>
    </rss>
  </xsl:template>

  
</xsl:stylesheet>

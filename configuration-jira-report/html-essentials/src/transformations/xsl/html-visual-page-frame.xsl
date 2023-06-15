<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml"
    xmlns:xsd="http://www.w3.org/2001/XMLSchema"
    version="3.0"
    >

  <xsl:output  version="1.0" encoding="utf-8" indent="yes"
               method="xhtml"
	       />

  <xsl:param name="report-title" >Report</xsl:param>

  <xsl:template match="/">
    <html>
      <xsl:apply-templates select="//*:head" />
      
      <xsl:apply-templates select="//*:body" />
      
    </html>
  </xsl:template>

  <xsl:template match="*:head">
    <head>
      <xsl:copy-of select="@*" />
      <xsl:copy>
	<xsl:apply-templates/>
      </xsl:copy>
      <link rel="stylesheet" type="text/css" href="css/html-basics/style.css" />
      <link rel="stylesheet" type="text/css" href="css/style.css" />
    </head>
  </xsl:template>

  <xsl:template match="*:body">
    <body>
      <xsl:copy-of select="@*" />
      <header>
	  <hg>
	  <h2>Performance Report</h2>
	  <h3>Jira Issues | 2023 | Issues Report</h3> 
	  </hg>
      </header>
      <main>
      <xsl:copy>
	<xsl:apply-templates/>
      </xsl:copy>
      </main>
      <footer>
	<h5>
	  Vionta.net. 
	</h5>
	<h5>
	  Salvora presentation for markup uk
	</h5>
      </footer>
    </body>
  </xsl:template>

  <xsl:template match="node()|element()|@*">
    <xsl:copy>
      <xsl:apply-templates/>
    </xsl:copy>
  </xsl:template>

</xsl:stylesheet>

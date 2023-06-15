<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns="http://www.w3.org/1999/xhtml"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                version="3.0"
                >

  <xsl:output  version="1.0" encoding="utf-8" indent="yes"
               omit-xml-declaration="no"
               media-type="text/html"
               doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"
               doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN"/>

  <xsl:strip-space elements="*"/>

  <xsl:template match="/">
    <html>
      <head><title>Jira Report</title>
      </head>
      <xsl:call-template name="main.table.preview" />
      <xsl:call-template name="epic.table" />


  </html>
</xsl:template>

    <xsl:template name="main.table.preview">
    <div class="header">
      <h2>MAIN REPORT</h2>
    </div>
    <div class="content">
      <table class="smallsummary ">
	<xsl:apply-templates select="//item" mode="analysis-table" >
	  <xsl:sort order="ascending" select="string(priority/@id)" />
	  <xsl:sort order="ascending" select="string(status/@id)" />
	</xsl:apply-templates>
      </table>
    </div>
    </xsl:template>


  <xsl:template match="item" mode="analysis-table" >
    <tr>
      <td>
	<a href="https://axinic.central.inditex.grp/jira/browse/{key/text()}" ><xsl:value-of select="*:key/text()"></xsl:value-of></a>
      </td>
      <td>
	<xsl:value-of select="*:type/text()"></xsl:value-of>
      </td>
      <td class="small-text" >
	<xsl:value-of select="*:summary/text()"></xsl:value-of>
      </td>
      <td>

	<xsl:value-of select="status/text()" />

      </td>
      <td>

	<xsl:value-of select="substring(priority/text(), 1, 1)"></xsl:value-of>
      </td>
      <td>
	<xsl:value-of select="string(assignee/@username)"></xsl:value-of>
      </td>
      <td>
	<xsl:value-of select="substring(updated/text(), 5, 7)"></xsl:value-of>
      </td>
      <td>
	<xsl:value-of select="substring(resolved/text(), 5, 7)"></xsl:value-of>
      </td>
      
      <td>
	<xsl:value-of select="substring(due/text(), 5, 7)"></xsl:value-of>
      </td>

            <td>
	<xsl:value-of select="replace(.//customfield[string(@id) eq 'customfield_10619']/customfieldvalues/customfieldvalue/text(), '\.', ',')"></xsl:value-of>
      </td>

      <td>
	<xsl:value-of select="replace(.//customfield[string(@id) eq 'customfield_10618']/customfieldvalues/customfieldvalue/text(), '\.', ',')"></xsl:value-of>
      </td>
      <td>
	<xsl:value-of select="customfields/customfield[customfieldname  eq 'Enlace de &#233;pica']/customfieldvalues/customfieldvalue/text()"></xsl:value-of>
      </td>
      
    </tr>
  </xsl:template>

  <xsl:template name="epic.table">
    <div class="header">
      <h2>EPIC REPORT</h2>
    </div>
    <div class="content">
      <table class="smallsummary ">
	<xsl:call-template name="table.header"/>
	<xsl:apply-templates select="/rss/channel/item[(type eq '&#201;pica') or (type = 'Epic')]" mode="analysis-table">
	  <xsl:sort order="ascending" select="string(priority/@id)" />
	  <xsl:sort order="ascending" select="string(status/@id)" />
	</xsl:apply-templates>
      </table>
    </div>
  </xsl:template>





<!--  
  <xsl:template name="opened.table">
    <div class="header">
      <h2>Active</h2>
    </div>
    <div class="content">
      <table class="smallsummary ">
	<xsl:call-template name="table.header"/>
	<xsl:apply-templates select="/rss/channel/item[xsd:integer(status/@id) lt 5] " mode="main-table" >
	  <xsl:sort order="ascending" select="string(priority/@id)" />
	  <xsl:sort order="ascending" select="string(status/@id)" />
	</xsl:apply-templates>
      </table>
    </div>
  </xsl:template>
-->

  
<!--  
  <xsl:template name="bloqueado.table">
    <div class="header">
      <h2>BLOQUEADO</h2>
    </div>
    <div class="content">
      <table class="smallsummary ">
	<xsl:call-template name="table.header"/>

	<xsl:apply-templates select="/rss/channel/item[(string(statusCategory/@id) eq '4') and (.//customfield[string(@id) eq 'customfield_10800']/customfieldvalues/customfieldvalue/text()= 'En Espera')]" mode="main-table" >

     	  <xsl:sort order="ascending" select="string(priority/@id)" />
	  <xsl:sort order="ascending" select="string(status/@id)" />
	</xsl:apply-templates>
      </table>
    </div>
	 
  </xsl:template>
-->  
  <xsl:template name="table.header">
	<tr>
	  <th>ID</th>
	  <th>TIPO</th>
	  <th>NOMBRE</th>

	  <th>ESTADO</th>
	  <th>PRIORIDAD</th>

	  <th>RESPONSABLE</th>
	  <th>CREA</th>
	  <th>ULT</th>
	  <th>RES</th>
	  <th>DEDIC</th>
	  <th>APROB</th>

	  
	</tr>
    
  </xsl:template>


</xsl:stylesheet>

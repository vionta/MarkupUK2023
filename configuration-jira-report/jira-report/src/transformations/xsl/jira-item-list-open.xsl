<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns="http://www.w3.org/1999/xhtml"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                version="3.0"
                >

  <xsl:output  version="1.0" encoding="utf-8" indent="yes"
	       method="xml" />

  <xsl:strip-space elements="*"/>

  <xsl:template match="/">
    <div>
      <xsl:call-template name="status.count" />
      <xsl:call-template name="epic.table" />
      <xsl:call-template name="main.table.preview" />
    </div>
  </xsl:template>

    <xsl:template name="status.count">
      <xsl:variable name="issues" select="//item" />
	
      <xsl:for-each select="distinct-values(//item/statusCategory/@id)">
	
	<xsl:variable name="status-category-id" select="." />
	<p><xsl:value-of select="($issues/statusCategory[@id eq $status-category-id]/@key)[1]" />:</p>
	<xsl:value-of
	    select="count($issues/statusCategory[@id eq $status-category-id])" />
	<ul>
	  <!-- ....... we take the status ........ -->
	  <xsl:for-each
	      select="distinct-values($issues[statusCategory/@id eq $status-category-id]/status/@id)" >
	    <li>
	      <xsl:value-of select="." />
	      
	      <xsl:variable name="status-id" select="." />
	      <xsl:variable name="status-ref" select="$issues//status[@id eq $status-id]" />
	    
	    <xsl:value-of select="$status-ref[1]/text()" />  : <xsl:value-of select="count($status-ref)" /> - <xsl:value-of select="$status-ref[1]/@description" />
	</li>  </xsl:for-each>

	</ul>
      </xsl:for-each>

    </xsl:template>
    
    <xsl:template name="main.table.preview">
    <div class="header">
      <h2>MAIN REPORT</h2>
    </div>
    <div class="content">
      <table class="smallsummary ">
	<xsl:call-template name="table.header"/>

	<xsl:apply-templates select="//item[(status/text() != 'Cerrada') and (status/text() != 'Cancelada') and (status/text() != 'Aprobación PO') and (status/text() != 'Cálculo UTs')]" mode="analysis-table" >
	  <!--
	      <xsl:apply-templates select="//item[(status/text() != 'Cerrada') and (status/text() != 'Cancelada')]" mode="analysis-table" >
-->
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

	<xsl:value-of select="substring(priority/text(), 0, 3)"></xsl:value-of>
      </td>
      <td>
	<xsl:value-of select="substring-before(assignee/@username, '@')"></xsl:value-of>
      </td>
      <td>
	<!--
	    <xsl:value-of select="substring(updated/text(), 5, 7)"></xsl:value-of>
	-->
	<xsl:value-of select="created/text()"></xsl:value-of>
      </td>
      <td>
	<!--
	    <xsl:value-of select="substring(updated/text(), 5, 7)"></xsl:value-of>
	-->
	<xsl:value-of select="updated/text()"></xsl:value-of>
      </td>
      <td>
	<!--
	

	<xsl:value-of select="substring(resolved/text(), 5, 7)"></xsl:value-of>
	-->
	<xsl:value-of select="resolved/text()"></xsl:value-of>
      </td>
      <!--
      <td>D:
	<xsl:value-of select="due/text()"></xsl:value-of>
      </td>
      -->
      <td>
	<xsl:value-of select="replace(.//customfield[string(@id) eq 'customfield_10619']/customfieldvalues/customfieldvalue/text(), '\.', ',')"></xsl:value-of>
      </td>

      <td>
	<xsl:value-of select="replace(.//customfield[string(@id) eq 'customfield_10618']/customfieldvalues/customfieldvalue/text(), '\.', ',')"></xsl:value-of>
      </td>
      <td>
	<xsl:value-of select="enlace_de_epica"></xsl:value-of>
      </td>
      <td>
<!--
	<xsl:value-of select="(.//comment)[last()]" disable-output-escaping="yes" ></xsl:value-of>
-->
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

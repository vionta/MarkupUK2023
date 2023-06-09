<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    version="3.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
    xmlns:xsd="http://www.w3.org/2001/XMLSchema"
    xmlns:arimp="http://www.vionta.net/schemas/arousa-import/v1.0/arousa-import.xsd"
    exclude-result-prefixes="arimp"
    >
  
  <arimp:publication artifact-name="fods-frame"   />

  <xsl:template name="frame" >
    <xsl:param name="headers" />
    <xsl:param name="content" />
    
    <office:document  xmlns:office="urn:oasis:names:tc:opendocument:xmlns:office:1.0" xmlns:style="urn:oasis:names:tc:opendocument:xmlns:style:1.0" xmlns:text="urn:oasis:names:tc:opendocument:xmlns:text:1.0" xmlns:table="urn:oasis:names:tc:opendocument:xmlns:table:1.0" xmlns:draw="urn:oasis:names:tc:opendocument:xmlns:drawing:1.0" xmlns:fo="urn:oasis:names:tc:opendocument:xmlns:xsl-fo-compatible:1.0" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:meta="urn:oasis:names:tc:opendocument:xmlns:meta:1.0" xmlns:number="urn:oasis:names:tc:opendocument:xmlns:datastyle:1.0" xmlns:presentation="urn:oasis:names:tc:opendocument:xmlns:presentation:1.0" xmlns:svg="urn:oasis:names:tc:opendocument:xmlns:svg-compatible:1.0" xmlns:chart="urn:oasis:names:tc:opendocument:xmlns:chart:1.0" xmlns:dr3d="urn:oasis:names:tc:opendocument:xmlns:dr3d:1.0" xmlns:math="http://www.w3.org/1998/Math/MathML" xmlns:form="urn:oasis:names:tc:opendocument:xmlns:form:1.0" xmlns:script="urn:oasis:names:tc:opendocument:xmlns:script:1.0" xmlns:config="urn:oasis:names:tc:opendocument:xmlns:config:1.0" xmlns:ooo="http://openoffice.org/2004/office" xmlns:ooow="http://openoffice.org/2004/writer" xmlns:oooc="http://openoffice.org/2004/calc" xmlns:dom="http://www.w3.org/2001/xml-events" xmlns:xforms="http://www.w3.org/2002/xforms" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:rpt="http://openoffice.org/2005/report" xmlns:of="urn:oasis:names:tc:opendocument:xmlns:of:1.2" xmlns:xhtml="http://www.w3.org/1999/xhtml" xmlns:grddl="http://www.w3.org/2003/g/data-view#" xmlns:tableooo="http://openoffice.org/2009/table" xmlns:drawooo="http://openoffice.org/2010/draw" xmlns:calcext="urn:org:documentfoundation:names:experimental:calc:xmlns:calcext:1.0" xmlns:loext="urn:org:documentfoundation:names:experimental:office:xmlns:loext:1.0" xmlns:field="urn:openoffice:names:experimental:ooo-ms-interop:xmlns:field:1.0" xmlns:formx="urn:openoffice:names:experimental:ooxml-odf-interop:xmlns:form:1.0" xmlns:css3t="http://www.w3.org/TR/css3-text/" office:version="1.2" office:mimetype="application/vnd.oasis.opendocument.spreadsheet">
      <office:meta><meta:creation-date>2017-11-22T12:19:35.127000000</meta:creation-date><dc:date>2017-11-22T12:20:42.820000000</dc:date><meta:editing-duration>PT1M7S</meta:editing-duration><meta:editing-cycles>1</meta:editing-cycles><meta:document-statistic meta:table-count="1" meta:cell-count="24" meta:object-count="0"/><meta:generator>LibreOffice/5.0.2.2$Windows_x86 LibreOffice_project/37b43f919e4de5eeaca9b9755ed688758a8251fe</meta:generator></office:meta>
      <office:settings>
	<config:config-item-set config:name="ooo:view-settings">
	  <config:config-item config:name="VisibleAreaTop" config:type="int">0</config:config-item>
	  <config:config-item config:name="VisibleAreaLeft" config:type="int">0</config:config-item>
	  <config:config-item config:name="VisibleAreaWidth" config:type="int">13546</config:config-item>
	  <config:config-item config:name="VisibleAreaHeight" config:type="int">1806</config:config-item>
	  <config:config-item-map-indexed config:name="Views">
	    <config:config-item-map-entry>
	      <config:config-item config:name="ViewId" config:type="string">view1</config:config-item>
	      <config:config-item-map-named config:name="Tables">
		<config:config-item-map-entry config:name="Sheet1">
		  <config:config-item config:name="CursorPositionX" config:type="int">0</config:config-item>
		  <config:config-item config:name="CursorPositionY" config:type="int">3</config:config-item>
		  <config:config-item config:name="HorizontalSplitMode" config:type="short">0</config:config-item>
		  <config:config-item config:name="VerticalSplitMode" config:type="short">0</config:config-item>
		  <config:config-item config:name="HorizontalSplitPosition" config:type="int">0</config:config-item>
		  <config:config-item config:name="VerticalSplitPosition" config:type="int">0</config:config-item>
		  <config:config-item config:name="ActiveSplitRange" config:type="short">2</config:config-item>
		  <config:config-item config:name="PositionLeft" config:type="int">0</config:config-item>
		  <config:config-item config:name="PositionRight" config:type="int">0</config:config-item>
		  <config:config-item config:name="PositionTop" config:type="int">0</config:config-item>
		  <config:config-item config:name="PositionBottom" config:type="int">0</config:config-item>
		  <config:config-item config:name="ZoomType" config:type="short">0</config:config-item>
		  <config:config-item config:name="ZoomValue" config:type="int">100</config:config-item>
		  <config:config-item config:name="PageViewZoomValue" config:type="int">60</config:config-item>
		  <config:config-item config:name="ShowGrid" config:type="boolean">true</config:config-item>
		</config:config-item-map-entry>
	      </config:config-item-map-named>
	      <config:config-item config:name="ActiveTable" config:type="string">Sheet1</config:config-item>
	      <config:config-item config:name="HorizontalScrollbarWidth" config:type="int">1840</config:config-item>
	      <config:config-item config:name="ZoomType" config:type="short">0</config:config-item>
	      <config:config-item config:name="ZoomValue" config:type="int">100</config:config-item>
	      <config:config-item config:name="PageViewZoomValue" config:type="int">60</config:config-item>
	      <config:config-item config:name="ShowPageBreakPreview" config:type="boolean">false</config:config-item>
	      <config:config-item config:name="ShowZeroValues" config:type="boolean">true</config:config-item>
	      <config:config-item config:name="ShowNotes" config:type="boolean">true</config:config-item>
	      <config:config-item config:name="ShowGrid" config:type="boolean">true</config:config-item>
	      <config:config-item config:name="GridColor" config:type="long">12632256</config:config-item>
	      <config:config-item config:name="ShowPageBreaks" config:type="boolean">true</config:config-item>
	      <config:config-item config:name="HasColumnRowHeaders" config:type="boolean">true</config:config-item>
	      <config:config-item config:name="HasSheetTabs" config:type="boolean">true</config:config-item>
	      <config:config-item config:name="IsOutlineSymbolsSet" config:type="boolean">true</config:config-item>
	      <config:config-item config:name="IsValueHighlightingEnabled" config:type="boolean">false</config:config-item>
	      <config:config-item config:name="IsSnapToRaster" config:type="boolean">false</config:config-item>
	      <config:config-item config:name="RasterIsVisible" config:type="boolean">false</config:config-item>
	      <config:config-item config:name="RasterResolutionX" config:type="int">1270</config:config-item>
	      <config:config-item config:name="RasterResolutionY" config:type="int">1270</config:config-item>
	      <config:config-item config:name="RasterSubdivisionX" config:type="int">1</config:config-item>
	      <config:config-item config:name="RasterSubdivisionY" config:type="int">1</config:config-item>
	      <config:config-item config:name="IsRasterAxisSynchronized" config:type="boolean">true</config:config-item>
	    </config:config-item-map-entry>
	  </config:config-item-map-indexed>
	</config:config-item-set>
	<config:config-item-set config:name="ooo:configuration-settings">
	  <config:config-item config:name="HasSheetTabs" config:type="boolean">true</config:config-item>
	  <config:config-item config:name="ShowNotes" config:type="boolean">true</config:config-item>
	  <config:config-item config:name="ShowZeroValues" config:type="boolean">true</config:config-item>
	  <config:config-item config:name="ShowGrid" config:type="boolean">true</config:config-item>
	  <config:config-item config:name="GridColor" config:type="long">12632256</config:config-item>
	  <config:config-item config:name="ShowPageBreaks" config:type="boolean">true</config:config-item>
	  <config:config-item config:name="IsKernAsianPunctuation" config:type="boolean">false</config:config-item>
	  <config:config-item config:name="IsOutlineSymbolsSet" config:type="boolean">true</config:config-item>
	  <config:config-item config:name="LinkUpdateMode" config:type="short">3</config:config-item>
	  <config:config-item config:name="HasColumnRowHeaders" config:type="boolean">true</config:config-item>
	  <config:config-item config:name="IsSnapToRaster" config:type="boolean">false</config:config-item>
	  <config:config-item config:name="RasterIsVisible" config:type="boolean">false</config:config-item>
	  <config:config-item config:name="RasterResolutionX" config:type="int">1270</config:config-item>
	  <config:config-item config:name="RasterResolutionY" config:type="int">1270</config:config-item>
	  <config:config-item config:name="RasterSubdivisionX" config:type="int">1</config:config-item>
	  <config:config-item config:name="RasterSubdivisionY" config:type="int">1</config:config-item>
	  <config:config-item config:name="IsRasterAxisSynchronized" config:type="boolean">true</config:config-item>
	  <config:config-item config:name="AutoCalculate" config:type="boolean">true</config:config-item>
	  <config:config-item config:name="ApplyUserData" config:type="boolean">true</config:config-item>
	  <config:config-item config:name="PrinterName" config:type="string"/>
	  <config:config-item config:name="PrinterSetup" config:type="base64Binary"/>
	  <config:config-item config:name="CharacterCompressionType" config:type="short">0</config:config-item>
	  <config:config-item config:name="SaveVersionOnClose" config:type="boolean">false</config:config-item>
	  <config:config-item config:name="UpdateFromTemplate" config:type="boolean">true</config:config-item>
	  <config:config-item config:name="AllowPrintJobCancel" config:type="boolean">true</config:config-item>
	  <config:config-item config:name="LoadReadonly" config:type="boolean">false</config:config-item>
	  <config:config-item config:name="IsDocumentShared" config:type="boolean">false</config:config-item>
	  <config:config-item config:name="EmbedFonts" config:type="boolean">false</config:config-item>
	  <config:config-item config:name="SyntaxStringRef" config:type="short">9999</config:config-item>
	</config:config-item-set>
      </office:settings>
      <office:scripts>
	<office:script script:language="ooo:Basic">
	  <ooo:libraries xmlns:ooo="http://openoffice.org/2004/office" xmlns:xlink="http://www.w3.org/1999/xlink"/>
	</office:script>
      </office:scripts>
      <office:font-face-decls>
	<style:font-face style:name="Liberation Sans" svg:font-family="&apos;Liberation Sans&apos;" style:font-family-generic="swiss" style:font-pitch="variable"/>
	<style:font-face style:name="Mangal" svg:font-family="Mangal" style:font-family-generic="system" style:font-pitch="variable"/>
	<style:font-face style:name="Microsoft YaHei" svg:font-family="&apos;Microsoft YaHei&apos;" style:font-family-generic="system" style:font-pitch="variable"/>
	<style:font-face style:name="Segoe UI" svg:font-family="&apos;Segoe UI&apos;" style:font-family-generic="system" style:font-pitch="variable"/>
	<style:font-face style:name="Tahoma" svg:font-family="Tahoma" style:font-family-generic="system" style:font-pitch="variable"/>
      </office:font-face-decls>
      <office:styles>
	<style:default-style style:family="table-cell">
	  <style:paragraph-properties style:tab-stop-distance="36pt"/>
	  <style:text-properties style:font-name="Liberation Sans" fo:language="en" fo:country="US" style:font-name-asian="Segoe UI" style:language-asian="zh" style:country-asian="CN" style:font-name-complex="Tahoma" style:language-complex="hi" style:country-complex="IN"/>
	</style:default-style>
	<number:number-style style:name="N0">
	  <number:number number:min-integer-digits="1"/>
	</number:number-style>
	<number:currency-style style:name="N104P0" style:volatile="true">
	  <number:currency-symbol number:language="en" number:country="US">$</number:currency-symbol>
	  <number:number number:decimal-places="2" loext:min-decimal-places="2" number:min-integer-digits="1" number:grouping="true"/>
	</number:currency-style>
	<number:currency-style style:name="N104">
	  <style:text-properties fo:color="#ff0000"/>
	  <number:text>-</number:text>
	  <number:currency-symbol number:language="en" number:country="US">$</number:currency-symbol>
	  <number:number number:decimal-places="2" loext:min-decimal-places="2" number:min-integer-digits="1" number:grouping="true"/>
	  <style:map style:condition="value()&gt;=0" style:apply-style-name="N104P0"/>
	</number:currency-style>
	<style:style style:name="Default" style:family="table-cell">
	  <style:text-properties style:font-name-asian="Microsoft YaHei" style:font-family-asian="&apos;Microsoft YaHei&apos;" style:font-family-generic-asian="system" style:font-pitch-asian="variable" style:font-name-complex="Mangal" style:font-family-complex="Mangal" style:font-family-generic-complex="system" style:font-pitch-complex="variable"/>
	</style:style>
	<style:style style:name="Result" style:family="table-cell" style:parent-style-name="Default">
	  <style:text-properties fo:font-style="italic" style:text-underline-style="solid" style:text-underline-width="auto" style:text-underline-color="font-color" fo:font-weight="bold"/>
	</style:style>
	<style:style style:name="Result2" style:family="table-cell" style:parent-style-name="Result" style:data-style-name="N104"/>
	<style:style style:name="Heading" style:family="table-cell" style:parent-style-name="Default">
	  <style:table-cell-properties style:text-align-source="fix" style:repeat-content="false"/>
	  <style:paragraph-properties fo:text-align="center"/>
	  <style:text-properties fo:font-size="16pt" fo:font-style="italic" fo:font-weight="bold"/>
	</style:style>
	<style:style style:name="Heading1" style:family="table-cell" style:parent-style-name="Heading">
	  <style:table-cell-properties style:rotation-angle="90"/>
	</style:style>
      </office:styles>
      <office:automatic-styles>
	<style:style style:name="co1" style:family="table-column">
	  <style:table-column-properties fo:break-before="auto" style:column-width="64.01pt"/>
	</style:style>
	<style:style style:name="ro1" style:family="table-row">
	  <style:table-row-properties style:row-height="12.81pt" fo:break-before="auto" style:use-optimal-row-height="true"/>
	</style:style>
	<style:style style:name="ta1" style:family="table" style:master-page-name="Default">
	  <style:table-properties table:display="true" style:writing-mode="lr-tb"/>
	</style:style>
	<style:page-layout style:name="pm1">
	  <style:page-layout-properties style:writing-mode="lr-tb"/>
	  <style:header-style>
	    <style:header-footer-properties fo:min-height="21.26pt" fo:margin-left="0pt" fo:margin-right="0pt" fo:margin-bottom="7.09pt"/>
	  </style:header-style>
	  <style:footer-style>
	    <style:header-footer-properties fo:min-height="21.26pt" fo:margin-left="0pt" fo:margin-right="0pt" fo:margin-top="7.09pt"/>
	  </style:footer-style>
	</style:page-layout>
	<style:page-layout style:name="pm2">
	  <style:page-layout-properties style:writing-mode="lr-tb"/>
	  <style:header-style>
	    <style:header-footer-properties fo:min-height="21.26pt" fo:margin-left="0pt" fo:margin-right="0pt" fo:margin-bottom="7.09pt" fo:border="2.49pt solid #000000" fo:padding="0.51pt" fo:background-color="#c0c0c0">
	      <style:background-image/>
	    </style:header-footer-properties>
	  </style:header-style>
	  <style:footer-style>
	    <style:header-footer-properties fo:min-height="21.26pt" fo:margin-left="0pt" fo:margin-right="0pt" fo:margin-top="7.09pt" fo:border="2.49pt solid #000000" fo:padding="0.51pt" fo:background-color="#c0c0c0">
	      <style:background-image/>
	    </style:header-footer-properties>
	  </style:footer-style>
	</style:page-layout>
      </office:automatic-styles>
      <office:master-styles>
	<style:master-page style:name="Default" style:page-layout-name="pm1">
	  <style:header>
	    <text:p><text:sheet-name>???</text:sheet-name></text:p>
	  </style:header>
	  <style:header-left style:display="false"/>
	  <style:footer>
	    <text:p>Page <text:page-number>1</text:page-number></text:p>
	  </style:footer>
	  <style:footer-left style:display="false"/>
	</style:master-page>
	<style:master-page style:name="Report" style:page-layout-name="pm2">
	  <style:header>
	    <style:region-left>
	      <text:p><text:sheet-name>???</text:sheet-name> (<text:title>???</text:title>)</text:p>
	    </style:region-left>
	    <style:region-right>
	      <text:p><text:date style:data-style-name="N2" text:date-value="2017-11-22">00/00/0000</text:date>, <text:time>00:00:00</text:time></text:p>
	    </style:region-right>
	  </style:header>
	  <style:header-left style:display="false"/>
	  <style:footer>
	    <text:p>Page <text:page-number>1</text:page-number> / <text:page-count>99</text:page-count></text:p>
	  </style:footer>
	  <style:footer-left style:display="false"/>
	</style:master-page>
      </office:master-styles>
      <office:body>
	<office:spreadsheet>
	  <table:calculation-settings table:automatic-find-labels="false"/>
	  <table:table table:name="Sheet1" table:style-name="ta1">
	    <table:table-column table:style-name="co1" table:number-columns-repeated="6" table:default-cell-style-name="Default"/>

	    <xsl:copy-of select="$headers" />
	    
	    <xsl:copy-of select="$content" />
	    
	  </table:table>
	  <table:named-expressions/>
	</office:spreadsheet>
      </office:body>
    </office:document>
  </xsl:template>

  
</xsl:stylesheet>

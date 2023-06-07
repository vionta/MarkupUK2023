<p:declare-step xmlns:p="http://www.w3.org/ns/xproc"  version="3.0">

  <!-- Takes the dependencies from the xslts and wraps them in the
       arousa ivy file. 
       -->
  <p:input port="source" primary="true" ><p:inline><documento/></p:inline></p:input>

  <p:output port="result" primary="true"
	    pipe="result@final-list" />

   <p:load name="load-ivy-file"  >
      <p:with-option name="href" select="'./arousa-ivy.xml'" />
    </p:load>
      
  <p:directory-list
    name="xslt-directory-list"
        include-filter=".xsl"  exclude-filter=".xsl~" >
    <p:with-option name="path" select="'../src/xsl/'" />
    
  </p:directory-list>

  <p:for-each name="xsl-files" >
    
    <p:with-input select="//*:file[@*:name]"  />

    <p:load name="load-file-content"  >
      <p:with-option
      name="href" select="concat('../src/xsl/', .//@*:name)" />
    </p:load>

  </p:for-each>
  
  <p:wrap-sequence name="xslt-imports" wrapper="xsl-files" >
  </p:wrap-sequence>

  <p:insert name="merge" position="first-child" >
    <p:with-input port="insertion"  pipe="result@load-ivy-file" />
  </p:insert>

  <p:xslt name="final-list">
    <p:with-input port="stylesheet" href="./extract-import-elements.xsl"/>
  </p:xslt>

  <p:store name="final-serialization" >
    <p:with-option name="href" select="'./arousa-ivy.xml'" />
  </p:store>
  
    
</p:declare-step>

<p:declare-step xmlns:p="http://www.w3.org/ns/xproc"  version="3.0">

  <p:input port="source" primary="true" ><p:inline><documento><otro></otro></documento></p:inline></p:input>

  <p:option name="entity" />
  
  <p:output port="result" primary="true"
	    pipe="result@final-issue-list" />

  <p:directory-list
    name="isses-directory-list"
        include-filter=".xml" >
          <p:with-option name="path" select="'../../../build/jiras/'" />
  </p:directory-list>
  
  <p:for-each name="files" >
    <p:with-input select="//*:file[@*:name]"  />

    <p:output port="result">
      <p:pipe step="fin-1" port="result"/>
    </p:output>

    <p:load name="load-file-content"  >
      <p:with-option
	  name="href" select="concat('../../../build/jiras/', .//@*:name)" />
    </p:load>
    <p:identity name="fin-1" />
  </p:for-each>
  
  <p:wrap-sequence name="lista-issues-2" wrapper="rss" />

    <p:store name="final-issue-list"> 
     <p:with-option name="href" select="'../../../build/reindexado.xml'"  />
     <p:with-input port="source" pipe="result@lista-issues-2" />	
  </p:store>

</p:declare-step>

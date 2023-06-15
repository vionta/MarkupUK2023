<p:declare-step
    xmlns:p="http://www.w3.org/ns/xproc"
    xmlns:c="http://www.w3.org/ns/xproc-step"
    name="myPipeline" version="3.0">
	  
   <p:input port="source"/>

   <p:for-each>
     <p:with-input select="/rss/channel/item"/>
     <p:variable name="filename" select="concat('../../../build/jiras/jira_', item/key/text(), '.xml')"/>

    <p:store>
      <p:with-option name="href" select="$filename"/>
    </p:store>
     
     
  </p:for-each>

</p:declare-step>
    

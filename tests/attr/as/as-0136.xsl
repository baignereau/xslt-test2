<?xml version="1.0" encoding="UTF-8"?>
<t:transform xmlns:my="http://myfunc.org"
             xmlns:t="http://www.w3.org/1999/XSL/Transform"
             exclude-result-prefixes="my"
             version="2.0">
<!-- Purpose: Test with xsl:function that has @as="document-node()*" 
  				and returns the empty sequence or a document node from fn:document(). -->

   <t:output method="xml" encoding="UTF-8"/>

   <t:function name="my:func1" as="document-node()*">
	     <t:sequence select="()"/>
   </t:function>

   <t:function name="my:func2" as="document-node()*">
	     <t:copy-of select="document('simple.xml')"/>
   </t:function>

   <t:template match="/doc">
      <out>
         <t:text>
</t:text>
         <func1>
            <t:value-of select="my:func1() instance of document-node()*"/>
            <t:value-of select="my:func1() instance of document-node()"/>
         </func1>
         <t:text>
</t:text>
         <func2>
            <t:value-of select="my:func2() instance of document-node()*"/>
            <t:value-of select="my:func2() instance of document-node()"/>
         </func2>
      </out>
   </t:template>
</t:transform>

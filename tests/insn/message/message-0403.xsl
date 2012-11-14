<?xml version="1.0" encoding="UTF-8"?>
<t:transform xmlns:t="http://www.w3.org/1999/XSL/Transform" version="2.0">
<!-- Purpose: Tests using xsl:for-each-group inside an xsl:message instruction. -->

   <t:template match="/">
      <out>
         <t:message>
    	       <t:for-each-group select="doc/item" group-by="@target">
			            <t:value-of select="@num"/>
               <t:text>:</t:text>
			            <t:value-of select="@target"/>
               <t:text> * </t:text>
		          </t:for-each-group>
		          <t:text>
</t:text>
         </t:message>
      </out>
   </t:template>
</t:transform>

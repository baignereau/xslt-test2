<?xml version="1.0" encoding="UTF-8"?>
<t:transform xmlns:t="http://www.w3.org/1999/XSL/Transform" version="2.0">
<!-- Purpose: Test case to create a new element using xsl:element and use inherit-namespace="no". -->

   <t:template match="doc">
 		   <t:text>
</t:text>
		    <out>
         <t:text>
</t:text>
         <t:element name="Outer" namespace="http://www.test.com">
 		 	       <t:text>
</t:text>
 		 		      <t:element name="{data/e2}" inherit-namespaces="no">
   	 				      <t:sequence select="//e2"/>
   				     </t:element>
  			    </t:element>
         <t:text>
</t:text>
      </out>
	  </t:template>
</t:transform>

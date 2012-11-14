<?xml version="1.0" encoding="UTF-8"?>
<t:transform xmlns:t="http://www.w3.org/1999/XSL/Transform" version="2.0">
<!-- Purpose: Test case to verify that range variables used in 'for' expressions can 
  				shadow global and template variables declared with the same name.-->

   <t:variable name="i" select="10"/>

   <t:template match="/">
		    <t:variable name="i" select="20"/>
		    <t:text>
</t:text>
		    <out>
         <t:text>
</t:text>
         <in>
            <t:value-of select="for $i in (1 to 3) , $i in (3 to 4) return ($i)"/>
         </in>
         <t:text>
</t:text>
         <in>
            <t:value-of select="for $i in 1, $i in (5,6,7), $i in 6 return ($i)"/>
         </in>
         <t:text>
</t:text>
      </out>
	  </t:template>
</t:transform>

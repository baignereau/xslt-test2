<?xml version="1.0" encoding="UTF-8"?>
<xslt:transform xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xslt="http://www.w3.org/1999/XSL/Transform"
                exclude-result-prefixes="xs"
                version="2.0">
<!-- Purpose: Use sequence constructor in xsl:sort instead of select, refer to . in the constructor -->

   <xslt:output method="xml" encoding="UTF-8" indent="no"/>

   <xslt:variable name="var" select="(1,4,0,-2,005,300)" as="xs:anyAtomicType*"/>

   <xslt:template match="/">
	     <out>
         <xslt:for-each select="$var">
    		      <xslt:sort data-type="number" order="descending">
   				        <xslt:value-of select="."/>
   			      </xslt:sort>
   			      <xslt:value-of select="."/>
   			      <xslt:value-of select="' | '"/>
  		     </xslt:for-each>
      </out>
   </xslt:template>
</xslt:transform>

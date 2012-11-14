<?xml version="1.0" encoding="UTF-8"?>
<xslt:transform xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xslt="http://www.w3.org/1999/XSL/Transform"
                exclude-result-prefixes="xs"
                version="2.0">
<!-- Purpose: Sort with two keys, both being cast to specific datatypes in their respective selects -->

   <xslt:output method="xml" encoding="UTF-8" indent="no"/>

   <xslt:variable name="x">
	     <a xmlns:xsl="http://www.w3.org/1999/XSL/Transform">100</a>
	     <a xmlns:xsl="http://www.w3.org/1999/XSL/Transform">105</a>
	     <a xmlns:xsl="http://www.w3.org/1999/XSL/Transform">200</a>
	     <a xmlns:xsl="http://www.w3.org/1999/XSL/Transform">300</a>
	     <a xmlns:xsl="http://www.w3.org/1999/XSL/Transform">700</a>
	     <a xmlns:xsl="http://www.w3.org/1999/XSL/Transform">900</a>
  </xslt:variable>

   <xslt:template match="/">
      <out>
         <xslt:text>
</xslt:text>
         <xslt:for-each select="$x/a">
            <xslt:sort select="xs:string(.)"/>
            <xslt:sort select="xs:integer(.)"/>
            <a>
               <xslt:value-of select="."/>
            </a>
            <xslt:text>
</xslt:text>
        </xslt:for-each>
      </out>                                       
  </xslt:template>

   <xslt:template match="text()"/>
</xslt:transform>

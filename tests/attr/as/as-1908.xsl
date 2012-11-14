<?xml version="1.0" encoding="UTF-8"?>
<xslt:transform xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xslt="http://www.w3.org/1999/XSL/Transform"
                exclude-result-prefixes="xs"
                version="2.0">
<!-- Purpose: Test with tunnel xsl:with-param without @select, where the sequence 
  				constructor contains an xs:untypedAtomic obtained at run time and @as=xs:token.-->

   <xslt:template match="/">
      <out>
         <xslt:apply-templates>
	           <xslt:with-param name="par1" tunnel="yes" as="xs:token">
		             <xslt:value-of select="doc-schemaas/elem-token"/>
	           </xslt:with-param>
         </xslt:apply-templates>
      </out>
   </xslt:template>

   <xslt:template match="doc-schemaas">
      <xslt:apply-templates select="elem-anyURI"/>
   </xslt:template>

   <xslt:template match="elem-anyURI">
      <xslt:param name="par1" tunnel="yes"/>
      <par1 xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
         <xslt:value-of select="$par1"/>
         <xslt:value-of select="$par1 instance of xs:token"/>
      </par1>

   </xslt:template>
</xslt:transform>

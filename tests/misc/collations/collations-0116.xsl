<!DOCTYPE xsl:stylesheet SYSTEM "collation.dtd">

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                exclude-result-prefixes="xs">

<xsl:strip-space elements="*"/>
<xsl:output method="xml" indent="yes"/>

<xsl:param name="collation" as="xs:string" select="'&coll;'"/>


<!-- deep-equal() function using explicit collation, default collation, and none -->

<xsl:template match="/">
<out>
  <th><xsl:value-of select="deep-equal(words/word[6], words/word[14], $collation)"/></th>
  <th><xsl:value-of select="deep-equal(words/word[6], words/word[14])" default-collation="&coll;"/></th>
  <th><xsl:value-of select="deep-equal(words/word[6], words/word[14])"/></th>  
</out>
</xsl:template>

</xsl:stylesheet>


<?xml version="1.0"?> 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

<?spec xpath#id-general-comparisons?>
<!--  Test of  ">" operator with false expected value. -->
<xsl:template match="/">
<out>
<xsl:value-of select="1>2"/>
</out>
</xsl:template>
 
</xsl:stylesheet>

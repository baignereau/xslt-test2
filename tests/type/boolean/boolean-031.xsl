<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
<?spec xpath#id-logical-expressions?>
<!--  Test of boolean "or" operator -->
<xsl:template match="doc">
<out>
<xsl:value-of select="0 or ''"/>
</out>
</xsl:template>
</xsl:stylesheet>
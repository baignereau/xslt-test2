<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="*">
  <xsl:apply-templates select="@*"/>
</xsl:template>
<xsl:template match="@*[1]"><ok/></xsl:template>
<xsl:template match="@*"><bad/></xsl:template>
</xsl:stylesheet>


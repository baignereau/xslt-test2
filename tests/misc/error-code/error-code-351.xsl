<?xml version="1.0"?> 

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:my="http://my.com/">

<?error XTSE1300?>

<xsl:decimal-format name="d" percent="0" per-mille="0"/>

  <xsl:template name="main">
    <out>
        <xsl:sequence select="format-number(12, '##0', 'd')"/>
    </out>
  </xsl:template>
  



</xsl:stylesheet>
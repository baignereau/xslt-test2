<?xml version="1.0"?> 

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
xmlns:xs="http://www.w3.org/2001/XMLSchema">

<?error XTTE0570?>



  <xsl:template name="main">
    <out>
        <xsl:variable name="x" select="'two'" as="xs:integer"/>
        <xsl:value-of select="$x"/>
    </out>
  </xsl:template>
  


</xsl:stylesheet>
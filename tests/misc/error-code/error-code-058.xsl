<?xml version="1.0" encoding="iso-8859-1"?> 

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" >

<!-- Error: xsl:choose  -->
<?spec xslt#errors?><?error XTSE0010?>

  <xsl:template match="doc" name="this">
    <out>
      <xsl:choose>
      <xsl:otherwise/>
      </xsl:choose>
      <xsl:message>Error not detected!</xsl:message>
    </out>
  </xsl:template>
  

</xsl:stylesheet>
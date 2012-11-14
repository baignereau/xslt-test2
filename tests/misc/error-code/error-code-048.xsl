<?xml version="1.0" encoding="iso-8859-1"?> 

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" >

<!-- Error: xsl:apply-templates (top level) -->
<?spec xslt#errors?><?error XTSE0010?>

  <xsl:template match="doc">
    <out>
      <xsl:apply-templates select="item">
         <xsl:sort select="."/>
      </xsl:apply-templates> 
      <xsl:message>Error not detected!</xsl:message>
    </out>
  </xsl:template>

<xsl:apply-templates select="//*"/>

</xsl:stylesheet>
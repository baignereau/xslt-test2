<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output indent="yes" encoding="UTF-8"/>
<!-- check that the namespace::xml node is accessible  -->
<?spec xpath#axes?>
  <xsl:template match="doc">
    <out>
    <xsl:variable name="nn" select="namespace::xml"/>
    <ans count="{count($nn)}" name="{name($nn)}" value="{string($nn)}"/>
    </out>
  </xsl:template>
</xsl:stylesheet>

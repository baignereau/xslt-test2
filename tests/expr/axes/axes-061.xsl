<?xml version="1.0"?> 

<?spec xpath#combining_seq?>
  <!-- PURPOSE: Test optimization of path expressions under union, intersect, and difference . -->
  <?same-as-1.0 no?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
  <xsl:output indent="yes"/>

  <xsl:template match="a">
  <out>
  <u><xsl:value-of select="/a/b/@id | /a/b/@dummy | /a/c/@id | /a/d/@id " separator=","/></u>
  <d><xsl:value-of select="/a/b/@* except /a/b/@dummy" separator=","/></d>  
  </out>
  </xsl:template>


</xsl:stylesheet>

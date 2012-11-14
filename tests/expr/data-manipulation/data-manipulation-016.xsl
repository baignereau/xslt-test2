<?xml version="1.0"?> 

 <xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
<?spec xslt#format-number?>
  <!-- Purpose: Test of "format-number" using a parameter as 
       the number to be formatted and a parameter for the
       format pattern. -->

<xsl:param name = "param1">1234.78</xsl:param>
<xsl:param name = "param2">#,###.00</xsl:param>

<xsl:template match="doc">
 <out>
   <xsl:value-of select = "format-number($param1,$param2)"/>
 </out>
</xsl:template>

</xsl:stylesheet>

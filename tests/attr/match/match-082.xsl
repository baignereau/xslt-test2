<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:f="http://f.com/">

<?spec xslt#patterns?>
<?error XPST0017?>
  <!-- FileName: match9060-err -->
    <!-- Purpose: Test parens not allowed at the top level of a pattern -->
  
<xsl:key name="k" match="*" use="42"/>  

<xsl:template match="(a|b)" priority="5">
 <out>WRONG!</out>
</xsl:template>

<xsl:template match="/">
<out>OK!</out>
</xsl:template>

</xsl:stylesheet>

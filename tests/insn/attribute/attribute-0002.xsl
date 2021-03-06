<?xml version="1.0" encoding="UTF-8"?>

  <!-- FileName: atrs62 -->
    <!-- Purpose: Test that the value of the namespace attribute is cast to a string if supplied as a URI. -->

  
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:p="http://ns.p.com/"
  xmlns:xs="http://www.w3.org/2001/XMLSchema">

  <xsl:template name="main">
    <out>
      <xsl:attribute name="{ xs:QName('p:local') }" namespace="{ xs:anyURI('http://ns.p.com/2') }">content</xsl:attribute>
    </out>
  </xsl:template>


</xsl:stylesheet>
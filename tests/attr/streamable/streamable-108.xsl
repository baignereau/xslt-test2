<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes=" xs"
    version="2.1">
       
  
  <!-- streaming with xsl:next-match -->
   
  <xsl:import-schema schema-location="loans.xsd"/>

  <xsl:mode name="s" streamable="yes"/>
  <xsl:mode name="t" streamable="yes"/>
       
  <xsl:output method="xml" indent="yes" encoding="UTF-8" />
  <xsl:strip-space elements="Pool"/>
  
    
  <xsl:template name="main" match="/">
    <out>
      <xsl:apply-templates select="doc('loans.xml')" mode="s"/>
    </out>
  </xsl:template>
  
  <xsl:template match="*" mode="s">
    <xsl:param name="x" select="()"/>
    <xsl:copy>
      <xsl:copy-of select="@*"/>
      <xsl:attribute name="count" select="count($x/*)"/>
      <xsl:apply-templates mode="s"/>
    </xsl:copy>
  </xsl:template>
  
  <xsl:template match="Loan" mode="s">
     <TheLoan>
       <xsl:next-match>
         <xsl:with-param name="x" select="."/>
       </xsl:next-match>
     </TheLoan>
  </xsl:template>
    
</xsl:transform>


<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes=" xs"
    version="2.1">
       
  
  <!-- within a streaming template, arithmetic on result of streamed value -->
   
  <xsl:mode streamable="yes"/>
       
  <xsl:output method="xml" indent="yes" encoding="UTF-8" />

  <xsl:strip-space elements="*"/>
    
  <xsl:template name="main">
    <out>
      <xsl:apply-templates select="doc('mixed.xml')"/>
    </out>
  </xsl:template>
  
  <xsl:template match="book">
    <xsl:apply-templates select=".//chtitle"/>
  </xsl:template>
  
  <xsl:template match="chtitle">
    <title><xsl:value-of select="string-length(.) + 5"/></title>
  </xsl:template>
  
    
</xsl:transform>


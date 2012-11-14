<xsl:stylesheet version="3.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:map="http://www.w3.org/2005/xpath-functions/map"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="map xs">
    
    <!-- Test of xsl:stream with sum(), filtered with a motionless predicate -->
    
    <xsl:template name="main">
      <xsl:stream href="books.xml">
        <out>
          <xsl:copy-of select="sum(./BOOKLIST/BOOKS/ITEM[@CAT='P']/PRICE)"/>
        </out>
      </xsl:stream>
    </xsl:template>   
    
</xsl:stylesheet>
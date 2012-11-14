<?spec xslt#grouping?>
<xsl:transform 
  version="3.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <!-- use case for group-starting-with to structure DT/DD style glossary -->
  
<xsl:template match="DL">
<html>
    <OL>
        <xsl:for-each-group select="*" group-starting-with="DT" bind-group="g">   
            <LI>
                <B><xsl:value-of select="."/></B>
                <xsl:text> - </xsl:text>
                <xsl:choose>
                  <xsl:when test="$g[self::DD]">
                     <I><xsl:value-of select="$g[self::DD]"/></I>
                  </xsl:when>
                  <xsl:otherwise>
                    <I>(No definition provided)</I>
                  </xsl:otherwise>
                </xsl:choose>                      
            </LI>
        </xsl:for-each-group>
    </OL>
</html>
</xsl:template>
	
</xsl:transform>
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:local="http://local/"
    exclude-result-prefixes="xs"
    version="3.0">
    
    <!-- sequence type function(x) as x  -->
    
    <xsl:function name="local:f" as="xs:integer">
        <xsl:param name="x" as="xs:integer"/>
        <xsl:sequence select="$x + 3"/>
    </xsl:function>
    
    <xsl:template name="main">
        <xsl:variable name="f" as="function(xs:integer) as xs:integer" select="local:f#1"/>
        <out><xsl:value-of select="$f(2)"/></out>
    </xsl:template>
    
</xsl:stylesheet>
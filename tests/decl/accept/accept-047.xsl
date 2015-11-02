<!-- xsl:accept - OK to have an absent function that isn't called -->

<xsl:package
  version="3.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:C="http://www.w3.org/xslt30/tests/accept"
  exclude-result-prefixes="xs C">
  
  <xsl:param name="accept" as="xs:boolean" static="yes" select="true()"/>
  <xsl:param name="go" as="xs:boolean"/>
  
  <xsl:use-package
     name="http://www.w3.org/xslt30tests/accept-C"
     package-version="1.0.0">
    
    <xsl:override>
      
      <xsl:variable name="v1" as="xs:integer" select="22"/>
      
      <xsl:template name="t1" as="xs:integer">
        <xsl:param name="p1" as="xs:string"/>
        <xsl:sequence select="string-length($p1)"/>
      </xsl:template>
      
      <xsl:function name="C:f1" as="xs:integer">
        <xsl:param name="p1" as="xs:string"/>
        <xsl:sequence select="string-length($p1)"/>
      </xsl:function>
      
    </xsl:override>
    
    <xsl:accept component="attribute-set" names="a1" visibility="absent" use-when="$accept"/>
  </xsl:use-package>  
  
  
  <xsl:template name="main">
    <out>
      <xsl:if test="$go">
        <in  xsl:use-attribute-sets="a1"/>
      </xsl:if>
      <xsl:call-template name="t1">
        <xsl:with-param name="p1" select="string(C:f1('London')) || $v1"/>
      </xsl:call-template>
    </out>
  </xsl:template>  
  

</xsl:package>   
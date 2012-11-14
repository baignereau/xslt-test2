<!DOCTYPE xsl:stylesheet SYSTEM "collation.dtd">

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                exclude-result-prefixes="xs">

<xsl:strip-space elements="*"/>
<xsl:output method="xml" indent="yes"/>

<xsl:param name="collation" as="xs:string" select="'&coll;'"/>


<!-- keys using a case-blind collation mixing explicit and default collation -->

<xsl:key name="k" match="word[position() mod 2 = 0]" use="." collation="&coll;"/>
<xsl:key name="k" match="word[position() mod 2 = 1]" use="." default-collation="&coll;"/>

<xsl:template match="/">
<out>
  <xsl:value-of select="key('k', 'thou')"/>
</out>
</xsl:template>

</xsl:stylesheet>


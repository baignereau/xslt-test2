<!DOCTYPE xsl:stylesheet SYSTEM "collation.dtd">

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                exclude-result-prefixes="xs">

<xsl:strip-space elements="*"/>
<xsl:output method="xml" indent="yes"/>

<xsl:param name="collation" as="xs:string" select="'&coll;'"/>
<xsl:variable name="x" as="xs:string" select="'Adele'"/>


<!-- value comparison using a case-blind collation as default collation, defined at various levels,
     result known at compile time -->

<xsl:key name="k" match="word" use="."/>

<xsl:template match="/" name="main">
<out>
  <xsl:call-template name="one"/>
  <xsl:call-template name="two"/>
  <xsl:call-template name="three"/>
</out>
</xsl:template>

<xsl:template name="one" default-collation="&coll;">
  <one><xsl:value-of select="$x eq 'ADELE'"/></one>
</xsl:template>

<xsl:template name="two">
  <two xsl:default-collation="&coll;"><xsl:value-of select="'Adele' eq 'ADELE'"/></two>
</xsl:template>

<xsl:template name="three">
  <three><xsl:value-of select="$x eq 'ADELE'" default-collation="&coll;"/></three>
</xsl:template>

</xsl:stylesheet>


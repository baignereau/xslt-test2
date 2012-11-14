<?xml version="1.0"?> 

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
        xmlns:xs="http://www.w3.org/2001/XMLSchema"
        xmlns="http://schema061.uri/"
        xpath-default-namespace="http://schema061.uri/"
        exclude-result-prefixes="xs">

<!-- PURPOSE: Test validation of dynamically constructed elements -->
              <?spec xslt#import-schema?>
              <?spec xslt#validating-using-validation-attribute?>
              <?spec xpath#id-matching-item?>
              <?spec xpath#id-schema-element-test?>

<xsl:import-schema schema-location="schema061.xsd" 
     namespace="http://schema061.uri/"/>
  

<xsl:output indent="yes"/>

<xsl:param name="address">address</xsl:param>
<xsl:param name="person">person</xsl:param>
<xsl:param name="first">first</xsl:param>
<xsl:param name="middle">middle</xsl:param>
<xsl:param name="last">last</xsl:param>
<xsl:param name="age">age</xsl:param>
<xsl:param name="zip">zip</xsl:param>

  <xsl:template match="/">
  <xsl:variable name="t" as="element()">
    <xsl:element name="{$address}" namespace="http://schema061.uri/" validation="strict">
    <xsl:attribute name="{$zip}">rg4</xsl:attribute>
      <xsl:element name="{$person}" namespace="http://schema061.uri/">
        <xsl:element name="{$first}" namespace="http://schema061.uri/">Michael</xsl:element>
        <xsl:element name="{$middle}" namespace="http://schema061.uri/">H</xsl:element>        
        <xsl:element name="{$last}" namespace="http://schema061.uri/">Kay</xsl:element>
      </xsl:element>
      <xsl:element name="{$age}" namespace="http://schema061.uri/">52</xsl:element>
    </xsl:element>
  </xsl:variable>        
  <out>
  <t><xsl:value-of select="$t instance of schema-element(address)"/></t>
  <t><xsl:value-of select="$t instance of element(address)"/></t>
  <t><xsl:value-of select="$t instance of element(address,addressType)"/></t>
  <t><xsl:value-of select="$t instance of element(*,addressType)"/></t>
  <t><xsl:value-of select="$t/person instance of schema-element(person)"/></t>   
  <t><xsl:value-of select="$t/person instance of element(person)"/></t> 
  <t><xsl:value-of select="$t/person/middle instance of element(*,xs:string)"/></t>
  <f><xsl:value-of select="$t instance of schema-element(person)"/></f>
  <f><xsl:value-of select="$t instance of element(person)"/></f>
  <f><xsl:value-of select="$t instance of element(address,xs:string)"/></f>
  <f><xsl:value-of select="$t instance of element(*,xs:string)"/></f>
  <f><xsl:value-of select="$t/person instance of schema-element(address)"/></f>   
  <f><xsl:value-of select="$t/person instance of element(address)"/></f> 
  <f><xsl:value-of select="$t/person/middle instance of element(*,addressType)"/></f>
  </out>         
  </xsl:template>
  
</xsl:stylesheet>
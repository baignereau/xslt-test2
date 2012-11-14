<?xml version="1.0" encoding="UTF-8"?>
<xslt:transform xmlns:my="http://www.example.com/ns/match/var"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xslt="http://www.w3.org/1999/XSL/Transform"
                exclude-result-prefixes="my xs"
                version="2.0">
<!-- Purpose: Test of template matching with attribute( * ,$type) where $type has a prefix.-->

   <xslt:import-schema namespace="http://www.example.com/ns/match/var"
                       schema-location="variousTypesSchemaMatch.xsd"/>

   <xslt:template match="/">
	     <xslt:text>
</xslt:text>
	     <out>
         <xslt:apply-templates select="//@*"/>
      </out>
   </xslt:template>

   <xslt:template match="attribute(*, my:partNumberType)">
	     <xslt:element name="A">
		       <xslt:value-of select="."/>
	     </xslt:element>
      <xslt:text>
</xslt:text>
   </xslt:template>

   <xslt:template match="attribute(*, my:myListType)">
	     <xslt:element name="B">
		       <xslt:value-of select="."/>
	     </xslt:element>
      <xslt:text>
</xslt:text>
   </xslt:template>

   <xslt:template match="attribute(*, xs:NMTOKENS)">
	     <xslt:element name="C">
		       <xslt:value-of select="."/>
	     </xslt:element>
      <xslt:text>
</xslt:text>
   </xslt:template>

   <xslt:template match="attribute(*, my:partIntegerUnion)">
	     <xslt:element name="D">
		       <xslt:value-of select="."/>
	     </xslt:element>
      <xslt:text>
</xslt:text>
   </xslt:template>

   <xslt:template match="attribute(*)">
</xslt:template>
</xslt:transform>

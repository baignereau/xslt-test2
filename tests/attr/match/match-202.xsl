<?xml version="1.0" encoding="UTF-8"?>
<t:transform xmlns:my="http://www.example.com/ns/match/var"
             xmlns:t="http://www.w3.org/1999/XSL/Transform"
             exclude-result-prefixes="my"
             version="2.0">
<!-- Purpose: Test of template matching with document-node(schema-element($name)), $name is a top-level 
  				element declaration of a user-defined union type.-->

   <t:import-schema namespace="http://www.example.com/ns/match/var"
                    schema-location="variousTypesSchemaMatch.xsd"/>

   <t:template match="document-node(schema-element(my:simpleUserUnion))">
	     <t:text>
</t:text>
	     <out>
         <t:value-of select=". instance of document-node()"/>
         <t:text> * </t:text>
         <t:value-of select="./*[1]/name()"/>
      </out>
   </t:template>

   <t:template match="element(*)">
</t:template>
</t:transform>

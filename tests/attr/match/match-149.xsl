<?xml version="1.0" encoding="UTF-8"?>
<t:transform xmlns:my="http://www.example.com/ns/match/var"
             xmlns:t="http://www.w3.org/1999/XSL/Transform"
             exclude-result-prefixes="my"
             version="2.0">
<!-- Purpose: Test of template matching with element($name,$type) as the middle step in a path expression.-->

   <t:import-schema namespace="http://www.example.com/ns/match/var"
                    schema-location="variousTypesSchemaMatch.xsd"/>

   <t:template match="/my:userNode">
	     <t:text>
</t:text>
	     <out>
         <t:apply-templates/>
      </out>
   </t:template>

   <t:template match="my:userNode/element(my:complexUserElem, my:personType)/firstName">
	     <E>
         <t:value-of select="."/>
      </E>
   </t:template>

   <t:template match="my:userNode/my:complexUserElem">
	     <t:apply-templates/>
   </t:template>

   <t:template match="element()">
</t:template>
</t:transform>

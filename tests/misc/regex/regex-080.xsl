<?xml version="1.0" encoding="UTF-8"?>
<t:transform xmlns:t="http://www.w3.org/1999/XSL/Transform" version="2.0">
<!-- Purpose: Test to verify that the value of current captured substrings is unaffected through a call to xsl:apply-imports.-->

   <t:import href="regex20_035a.xsl"/>

   <t:output method="xml" encoding="UTF-8"/>

   <t:template match="doc">
      <out>
         <t:analyze-string select="str1" regex="(a)B(c)D(e)F(g)H(i)J(k)L(m)N(o)P(q)">
            <t:matching-substring>
               <t:apply-templates select="doc('regex20_031.xml')//str1"/>
            </t:matching-substring>
      
            <t:non-matching-substring>
               <t:value-of select="."/>
            </t:non-matching-substring>
         </t:analyze-string>
      </out>
   </t:template>

   <t:template match="str1">
	     <t:apply-imports/>
   </t:template>
</t:transform>

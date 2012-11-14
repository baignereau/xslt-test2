<?xml version="1.0" encoding="UTF-8"?>
<xslt:transform xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:tests="http://www.test.org"
                xmlns:xslt="http://www.w3.org/1999/XSL/Transform"
                version="2.0"
                exclude-result-prefixes="xs tests">
<!-- Purpose: Test of fn:position() on copied nodes -->

   <xslt:template match="doc">

	     <xslt:variable name="var1">
         <xslt:copy-of select="/doc"/>
      </xslt:variable>
      <out>
         <t1>
            <xslt:value-of select="$var1/doc/inner1[position()=last()]"/>
         </t1>
      </out>
   </xslt:template>
</xslt:transform>

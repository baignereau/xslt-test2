<?xml version="1.0" encoding="UTF-8"?>
<t:transform xmlns:t="http://www.w3.org/1999/XSL/Transform" version="2.0">
<!-- Purpose: Test with xsl:result-document @method="html".-->

   <t:template match="/">
      <t:result-document method="html">
         <html xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
            <head>
               <title/>
            </head>
            <body>hello</body>
         </html>
      </t:result-document>
   </t:template>
</t:transform>

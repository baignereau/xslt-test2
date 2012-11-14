<?spec xslt#grouping?>
<!-- test value-based grouping using a sort-key that depends on the whole group -->
<table xsl:version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">;
  <tr>
    <th>Country</th>
    <th>City List</th>
    <th>Population</th>
  </tr>;
  <xsl:for-each-group select="cities/city" group-by="@country" bind-group="g">
    <xsl:sort select="sum($g/@pop)" 
              data-type="number" order="descending"/>
    <tr>
      <td><xsl:value-of select="@country"/></td>
      <td>
        <xsl:for-each select="$g">
         <xsl:sort select="@pop" data-type="number" order="descending"/>
          <xsl:value-of select="@name"/>
          <xsl:if test="position() != last()">, </xsl:if>
        </xsl:for-each>
      </td>
      <td><xsl:value-of select="sum($g/@pop)"/></td>
    </tr>;
  </xsl:for-each-group>
</table>
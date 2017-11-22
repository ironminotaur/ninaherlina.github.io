<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:s="https://ninaherlina.github.io/hw5.xsd" >
  <xsl:output method = "html" encoding = "UTF-8"/>
<xsl:template match="s:doc">
  <html>
    <head>
      <title>HW5 XSL Output</title>
    </head>
  <body>
    <table style="width:450px">
      <tr style="color:white; background:black">
        <th>Symbol</th>
        <th>Price</th>
        <th>Ceo</th>
      </tr>
      <xsl:for-each select="s:item">
        <xsl:if test="s:price&gt;70">
        <xsl:variable name="alternate-colors">
        <xsl:choose>
             <xsl:when test="position() mod 2 = 0">cyan</xsl:when>
             <xsl:otherwise>lightgray</xsl:otherwise>
        </xsl:choose>
        </xsl:variable>
        <tr class="{$alternate-colors}">
            <td><xsl:value-of select="s:symbol" /></td>
            <td><xsl:value-of select="s:price" /></td>
            <td><xsl:value-of select="s:ceo" /></td>
        </tr> 
        </xsl:if>
        </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>

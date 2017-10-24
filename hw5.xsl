<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:stock="https://ninaherlina.github.io/hw5.xml" >
  <xsl:output method = "html" encoding = "UTF-8"/>
<xsl:template match="/">
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
      <xsl:for-each select="stock:doc/stock:item">
        <xsl:choose>
            <xsl:when test="stock:price &gt;70.00">
              <tr style="color:white; background:cyan; text-align:center">
                <td> <xsl:value-of select="stock:doc/stock:item/stock:symbol"/> </td>
                <td> <xsl:value-of select="stock:doc/stock:item/stock:price"/> </td>
                <td> <xsl:value-of select="stock:doc/stock:item/stock:ceo"/> </td>
              </tr>
              </xsl:when>
          <xsl:otherwise>
            <tr style="color:white; background:#D3D3D3; text-align:center">
                <td> <xsl:value-of select="stock:doc/stock:item/stock:symbol"/> </td>
                <td> <xsl:value-of select="stock:doc/stock:item/stock:price"/> </td>
                <td> <xsl:value-of select="stock:doc/stock:item/stock:ceo"/> </td>
              </tr>
          </xsl:otherwise>
          </xsl:choose>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>


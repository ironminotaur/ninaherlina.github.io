<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:s="https://ninaherlina.github.io/hw6.xsd" >
  <xsl:output method = "html" encoding = "UTF-8"/>
<xsl:template match="/">
  <html>
    <head>
      <title>HW6 XSL Output</title>
    </head>
  <body>
    <table style="width:450px">
      <tr style="color:white; background:black">
        <th>Symbol</th>
        <th>Price</th>
        <th>Ceo</th>
      </tr>
      <xsl:for-each select="/s:doc/s:item">
       <xsl:if test="./s:price&gt;70.00">
              <tr style="color:white; background:cyan; text-align:center">
                <td> <xsl:value-of select="./s:symbol"/> </td>
                <td> <xsl:value-of select="./s:price"/> </td>
                <td> <xsl:value-of select="./s:ceo"/> </td>
              </tr>
              </xsl:if>
        <tr style="background:red; color:white; font-weight:bold; padding:3px">
          The total of stocks that cost more than $70.00 is
          <xsl:value-of select="count(/s:doc/s:item)"/>
          <xsl:value-of select="sum(/s:doc/s:item/s:price)"/>
        </tr>
       </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>

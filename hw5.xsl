<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:s="https://ninaherlina.github.io/hw5.xsd">
<xsl:output method="html" encoding="UTF-8"/>
<xsl:template match="s/doc">
  <html>
    <head>
      <title>HW5 XSL Output</title>
    </head>
  <body>
    <h2>My CD Collection</h2>
    <table style="width:450px">
      <tr style="color:white; background:black">
        <th>symbol</th>
        <th>price</th>
        <th>ceo</th>
      </tr>
      <xsl:for-each select="s:item">
        <tr style="color:white; background:cyan; text-align:center">
          <td><xsl:value-of select="s:symbol"/></td>
          <td><xsl:value-of select="s:price"/></td>
          <td><xsl:value-of select="s:ceo"/></td>
        </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>


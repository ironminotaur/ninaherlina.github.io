<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:s="https://ninaherlina.github.io/hw5.xsd" >
  <xsl:output method = "html" encoding = "UTF-8"/>
<xsl:template match="s:doc">
  <html>
    <head>
      <title>HW5 XSL Output</title>
       <style>
        tr:nth-child(even) {
          background: #D3D3D3;
        }
      </style>
    </head>
  <body>
    <table style="width:450px">
      <tr style="color:white; background:black">
        <th>Symbol</th>
        <th>Price</th>
        <th>Ceo</th>
      </tr>
      <xsl:for-each select="s:item">
       <xsl:if test="s:price&gt;70.00">
              <tr style="color:white; text-align:center;">
                <td> <xsl:value-of select="s:symbol"/> </td>
                <td> <xsl:value-of select="s:price"/> </td>
                <td> <xsl:value-of select="s:ceo"/> </td>
              </tr>
              </xsl:if>
        <xsl:if test="position()  mod 2 = 1">
            <tr style="background:#D3D3D3;">
                <td> <xsl:value-of select="s:symbol"/> </td>
                <td> <xsl:value-of select="s:price"/> </td>
                <td> <xsl:value-of select="s:ceo"/> </td>
             </tr>
              </xsl:if>
        <xsl:if test="position()  mod 2 = 0">
            <tr style="background:cyan;">
                <td> <xsl:value-of select="s:symbol"/> </td>
                <td> <xsl:value-of select="s:price"/> </td>
                <td> <xsl:value-of select="s:ceo"/> </td>
            </tr>
  </xsl:if>
       </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>

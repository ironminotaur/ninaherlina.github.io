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
        <xsl:choose>
       <xsl:when test="s:price&gt;70.00">
              <tr style="color:white; background:cyan; text-align:center;">
                <td> <xsl:value-of select="s:symbol"/> </td>
                <td> <xsl:value-of select="s:price"/> </td>
                <td> <xsl:value-of select="s:ceo"/> </td>
              </tr>
              </xsl:when>
          <xsl:for-each select="s:item">
            <xsl:variable name="altColor">
                <xsl:choose>
                    <xsl:when test="position() mod 2 = 0">cyan</xsl:when>
                    <xsl:otherwise>lightgrey</xsl:otherwise>
                </xsl:choose>
            </xsl:variable>
        <tr style=background:"{$altColor}">
                <td> <xsl:value-of select="s:symbol"/> </td>
                <td>  $ <xsl:value-of select="s:price"/> </td>
                <td> <xsl:value-of select="s:ceo"/> </td>
        </tr>
        </xsl:for-each>
          </xsl:choose>
       </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>


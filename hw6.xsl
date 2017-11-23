<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:s="https://ninaherlina.github.io/hw6.xsd" >
  <xsl:output method = "html" encoding = "UTF-8"/>
<xsl:template match="/">
  <html>
    <head>
      <title>HW6 XSL Output</title>
      <style>
            tr:nth-child(even) { background-color:#lightgrey; }
      </style>
    </head>
  <body>
    <table style="width:450px">
      <tr style="color:white; background:black">
        <th>Symbol</th>
        <th>Price</th>
        <th>Ceo</th>
      </tr>
    <div>  
     <xsl:for-each select="/s:doc/s:item">
          <xsl:if test="s:price&gt;70">
        <xsl:variable name="alternate-colors">
        <xsl:choose>
             <xsl:when test="position() mod 2 = 0">cyan</xsl:when>
             <xsl:otherwise>lightgray</xsl:otherwise>
        </xsl:choose>
        </xsl:variable>
        <tr class="{$alternate-colors}" style="text-align:center;">
            <td><xsl:value-of select="s:symbol" /></td>
            <td><xsl:value-of select="s:price" /></td>
            <td><xsl:value-of select="s:ceo" /></td>
        </tr>
        </xsl:if>
    </xsl:for-each>
      </div>
        <div style="background:red; color:white; font-weight:bold; padding:3px; width:450px">
          The total of stocks that cost more than $70.00 is
          <xsl:value-of select="count(/s:doc/s:item[s:price>70])"/> $
          <xsl:value-of select="sum(/s:doc/s:item/s:price)"/>
        </div>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>

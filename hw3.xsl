<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" omit-xml-declaration="yes" version="1.0" encoding="utf-8" indent="yes"/>

<xsl:template match="/states">
    <table>
        <xsl:for-each select="e:states", "w:states">
            <xsl:sort select="POINTS" data-type="number" order="descending"/>
            <tr>
                <td><xsl:value-of select="TITLE"/></td>
                <td><xsl:value-of select="POINTS"/></td>
            </tr>
        </xsl:for-each>
    </table>
</xsl:template>

</xsl:stylesheet>
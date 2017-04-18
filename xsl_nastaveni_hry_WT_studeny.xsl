<?xml version="1.0" encoding="UTF-8"?>
<!-- Odkaz na github: https://github.com/xstuv003/znackovaci_jazyky -->
<!-- vybírani vsechn uzivatelů -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text"/>
    <xsl:template match="/settings/">
        {
            "uzivatele":"<xsl:value-of select="@game"/>
            [
                <xsl:for-each select="settings/user"> 
                {
                    "<xsl:value-of select="user_name"/>",
                    "<xsl:value-of select="fb_login"/>",
                }
                </xsl:for-each>
            ]
        }
    </xsl:template>

</xsl:stylesheet>

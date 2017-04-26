<?xml version='1.0' encoding='UTF-8' ?> 

<!--
    Document   : haizlerStepan.xsl
    Created on : 26. dubna 2017, 14:19
    Author     : haizler
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text"/>
    
    <xsl:template match="/config">
        {
        "Nastaveni domáciho kina - KODI":
        {
        "Nastaveni":<xsl:for-each select="configSys">
            {
            "Videa":<xsl:for-each select="video">
                {
                "Rozliseni": "<xsl:value-of select="rozliseni"/>",
                "Pomer stran": "<xsl:value-of select="pomerStran"/>",
                "Zvetseni obrazu": "<xsl:value-of select="priblizeni"/>",
                "Obnovovaci frekvence": "<xsl:value-of select="frekvence"/>",
                "Zpozdeni obnovovaci frekvence": "<xsl:value-of select="zpozdeni"/>",
                "Omezeni": "<xsl:value-of select="omezení"/>",
                "3D zobrazeni": "<xsl:value-of select="_3d"/>"
                },</xsl:for-each>
                
            "Zvuku":<xsl:for-each select="audio">
                {
                "Vystup": "<xsl:value-of select="vystup"/>",
                "Pocet kanalu": "<xsl:value-of select="kanaly"/>",
                "Hlasitost": "<xsl:value-of select="volume"/>",
                "Ztlumit": "<xsl:value-of select="mute"/>",
                "Zvuky tlacitek": "<xsl:value-of select="GUI"/>",
                "Zmena zvuku": "<xsl:value-of select="zvuky"/>"
                },</xsl:for-each>
                
            "Vstupnich zarizeni":<xsl:for-each select="input">
                {
                "Mys": "<xsl:value-of select="mys"/>",
                "Klavesnice": "<xsl:value-of select="klavesnice"/>",
                "Dotykova obrazovka": "<xsl:value-of select="dotykova"/>"
                },</xsl:for-each>
                
            "Site":<xsl:for-each select="net">
                {
                "Povolit LAN": "<xsl:value-of select="sit"/>",
                "Povolit WLAN": "<xsl:value-of select="wifi"/>",
                "Povolit PROXY": "<xsl:value-of select="proxy"/>",
                "Casovy server": "<xsl:value-of select="NTP"/>",
                "Povolit DHCP": "<xsl:value-of select="DHCP"/>",
                "IP adresa": "<xsl:value-of select="IP"/>",
                "Maska site": "<xsl:value-of select="mask"/>",
                "Vychozi brana": "<xsl:value-of select="gate"/>",
                "DNS":<xsl:for-each select="DNS">
                    {
                    "<xsl:value-of select="DNS1"/>",
                    "<xsl:value-of select="DNS2"/>",
                    "<xsl:value-of select="DNS3"/>"
                    },</xsl:for-each>
                },</xsl:for-each>
               
            }
        </xsl:for-each>
           
        <xsl:for-each select="uzivatelsky_profil[VIP = 'Zapnuto']">
            "Uzivatelsky profil":
            {
            
            "Jmeno": "<xsl:value-of select="jmeno"/>",
            "VIP": "<xsl:value-of select="VIP"/>",
            "Jazyk":<xsl:for-each select="jazyk">
                    {
                    "Dialogy": "<xsl:value-of select="@dialogy"/>",
                    "Texty": "<xsl:value-of select="@texty"/>",
                    "Titulky": "<xsl:value-of select="titulky"/>"
                    },</xsl:for-each>
            ,}
                
            }<xsl:if test="position() != last()">,</xsl:if>
        </xsl:for-each>
            
              
        }
        }
        
        
    </xsl:template>

</xsl:stylesheet>

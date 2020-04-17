<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml"/>

    <xsl:template match="/">
        <predictions  xmlns="https://www.playitaCorra.com/"
                      xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                      xsi:schemaLocation="https://www.playitaCorra.com/ XmlSchema_playita.xsd">
            <xsl:for-each select="/playa/prediccion/dia">
                <prediction>
                    <day>
                        <xsl:value-of select='@fecha'/>
                    </day>
                    <sky_state>
                        <f1>
                            <xsl:value-of select="estado_cielo/@f1"/>
                        </f1>
                        <descripcion1>
                            <xsl:value-of select="estado_cielo/@descripcion1"/>
                        </descripcion1>
                        <f2>
                            <xsl:value-of select="estado_cielo/@f2"/>
                        </f2>
                        <descripcion2>
                            <xsl:value-of select="estado_cielo/@descripcion2"/>
                        </descripcion2>
                    </sky_state>
                    <wind>
                        <f1>
                            <xsl:value-of select="viento/@f1"/>
                        </f1>
                        <descripcion1>
                            <xsl:value-of select="viento/@descripcion1"/>
                        </descripcion1>
                        <f2>
                            <xsl:value-of select="viento/@f2"/>
                        </f2>
                        <descripcion2>
                            <xsl:value-of select="viento/@descripcion2"/>
                        </descripcion2>
                    </wind>
                    <surge>
                        <f1>
                            <xsl:value-of select="oleaje/@f1"/>
                        </f1>
                        <descripcion1>
                            <xsl:value-of select="oleaje/@descripcion1"/>
                        </descripcion1>
                        <f2>
                            <xsl:value-of select="oleaje/@f2"/>
                        </f2>
                        <descripcion2>
                            <xsl:value-of select="oleaje/@descripcion2"/>
                        </descripcion2>
                    </surge>
                    <t_max>
                        <xsl:value-of select="t_maxima/@valor1"/>
                    </t_max>
                    <s_thermal>
                        <f1>
                            <xsl:value-of select="oleaje/@f1"/>
                        </f1>
                        <descripcion1>
                            <xsl:value-of select="s_termica/@descripcion1"/>
                        </descripcion1>
                    </s_thermal>
                    <t_water>
                        <xsl:value-of select="t_agua/@valor1"/>
                    </t_water>
                    <uv_max>
                        <xsl:value-of select="uv_max/@valor1"/>
                    </uv_max>
                </prediction>
            </xsl:for-each>
        </predictions>
    </xsl:template>

</xsl:stylesheet>

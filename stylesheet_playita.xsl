<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : stylesheet_playita.xsl
    Created on : 16 de abril de 2020, 16:40
    Author     : Sergio
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
                version="1.0">
    <xsl:output method="html"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Playita</title>
            
                <!-- Latest compiled and minified CSS -->
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>

                <!-- jQuery library -->
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

                <!-- Popper JS -->
                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

                <!-- Latest compiled JavaScript -->
                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"/>
                
                <!-- Style -->
                <link rel="stylesheet" href="styles.css"/>
            </head>
            
            <body>
                <div class="container">
                    <table class="table" >
                        <thead>
                            <tr>
                                <th colspan="4" class="my-center">DAY</th>
                                <th colspan="4" class="my-center">SKY STATE</th>
                                <th colspan="4" class="my-center">WIND</th>
                                <th colspan="4" class="my-center">SURGE</th>
                                <th colspan="4" class="my-center">T MAX</th>
                                <th colspan="4" class="my-center">S THERMAL</th>
                                <th colspan="4" class="my-center">T WATER</th>
                                <th colspan="4" class="my-center">UV MAX</th>
                            </tr>
                            <tr>
                                <th>DAY</th>
                                <th>SKY STATES</th>
                                <th>WIND</th>
                                <th>SURGE</th>
                                <th>T MAX</th>
                                <th>S THERMAL</th>
                                <th>T WATER</th>
                                <th>UV MAX</th>
                                <th>DAY</th>
                                <th>SKY STATES</th>
                                <th>WIND</th>
                                <th>SURGE</th>
                                <th>T MAX</th>
                                <th>S THERMAL</th>
                                <th>T WATER</th>
                                <th>UV MAX</th>
                                <th>DAY</th>
                                <th>SKY STATES</th>
                                <th>WIND</th>
                                <th>SURGE</th>
                                <th>T MAX</th>
                                <th>S THERMAL</th>
                                <th>T WATER</th>
                                <th>UV MAX</th>
                            </tr>
                        </thead>
                        <tbody>
                            <xsl:for-each select="/predictions/prediction">
                                <tr>
                                    <td>
                                        <xsl:value-of select="prediction/day"/>
                                    </td>
                                    
                                    <td>
                                        <xsl:value-of select="sky_state"/>
                                    </td>
                                    
                                    <td>
                                        <xsl:value-of select="wind"/>
                                    </td>
                                    
                                    <td>
                                        <xsl:value-of select="surge"/>
                                    </td>
                                    
                                    <td>
                                        <xsl:value-of select="t_max"/>
                                    </td>
                                    
                                    <td>
                                        <xsl:value-of select="s_thermal"/>
                                    </td>
                                    
                                    <td>
                                        <xsl:value-of select="t_water"/>
                                    </td>
                                    
                                    <td>
                                        <xsl:value-of select="uv_max"/>
                                    </td>
                                </tr>
                            </xsl:for-each>
                        </tbody>
                        
                    </table>
                </div>        
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>

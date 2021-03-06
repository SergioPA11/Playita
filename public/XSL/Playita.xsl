<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:template match="/">
    <div class="container">
      <table class="table">
        <thead>
          <tr>
            <th>DAY</th>
            <th>PREDICTED</th>
            <th>BEACH NAME</th>
            <th>LATITUDE</th>
            <th>LONGITUDE</th>
          </tr>
        </thead>
        <tbody>
          <xsl:for-each select="response/row/row">
            <tr>
              <td>
                <xsl:value-of select="date"/>
              </td>

              <td>
                <xsl:value-of select="predicted_level"/>
              </td>

              <td>
                <xsl:value-of select="beach_name"/>
              </td>

              <td>
                <xsl:value-of select="latitude"/>
              </td>

              <td>
                <xsl:value-of select="longitude"/>
              </td>
            </tr>
          </xsl:for-each>
        </tbody>

      </table>
    </div>
  </xsl:template>

</xsl:stylesheet>
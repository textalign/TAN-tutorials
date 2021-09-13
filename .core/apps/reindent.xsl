<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">
   <xsl:output indent="yes"/>
   <xsl:mode default-mode="#unnamed" on-no-match="shallow-copy"/>
   <xsl:template match="text()">
      <xsl:if test="matches(., '^\s')">
         <xsl:value-of select="' '"/>
      </xsl:if>
      <xsl:value-of select="normalize-space(.)"/>
      <xsl:if test="matches(., '\S') and matches(., '\s$')">
         <xsl:value-of select="' '"/>
      </xsl:if>
   </xsl:template>
</xsl:stylesheet>
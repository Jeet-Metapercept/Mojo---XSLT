<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format"
    version="2.0">

	<xsl:variable name="mirror-page-margins" select="true()"/>
    
    
    
    
    
    <xsl:attribute-set name="odd__footer">
        <xsl:attribute name="font-family">sans-serif</xsl:attribute>
        <xsl:attribute name="font-size">10pt</xsl:attribute>
        <xsl:attribute name="font-weight">normal</xsl:attribute>
        <xsl:attribute name="color">black</xsl:attribute>
    </xsl:attribute-set>
    
  
    
    <xsl:attribute-set name="__footer__image">
        <xsl:attribute name="top">20pt</xsl:attribute>
        <xsl:attribute name="position">absolute</xsl:attribute>
        <xsl:attribute name="left">
            <xsl:value-of select="$page-margins"/>
        </xsl:attribute>
        <xsl:attribute name="text-align">start</xsl:attribute>
    </xsl:attribute-set>
	
	
	
		
	<xsl:attribute-set name="__headerTitleText">
  <xsl:attribute name="padding-top">0.3in</xsl:attribute>
  <xsl:attribute name="text-align">center</xsl:attribute>
</xsl:attribute-set>

	    <!---\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-->
	    
	    <!--<xsl:attribute-set name="__headerBackground">
	        <xsl:attribute name="background-color">#FF0000</xsl:attribute>
	        <xsl:attribute name="position">absolute</xsl:attribute>
	        <xsl:attribute name="left">0</xsl:attribute>
	        <xsl:attribute name="width">
	            <xsl:value-of select="$page-width"/>
	        </xsl:attribute>
	    </xsl:attribute-set>
	    -->


    
	
</xsl:stylesheet>
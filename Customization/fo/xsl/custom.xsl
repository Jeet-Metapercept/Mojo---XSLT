<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format"
    version="1.1">

<xsl:template name="createFrontMatter_1.0">
        <fo:page-sequence master-reference="front-matter" xsl:use-attribute-sets="__force__page__count">
            <xsl:call-template name="insertFrontMatterStaticContents"/>
            <fo:flow flow-name="xsl-region-body">
			
			<fo:block text-align="center" width="100%">
                        <fo:external-graphic src="url({concat($artworkPrefix, '/Customization/OpenTopic/common/artwork/Analyse-it-300dpi.png')})"/>
                     </fo:block>
					 
					 
                <fo:block xsl:use-attribute-sets="__frontmatter">
                   <!-- set the title -->				  
                    <fo:block xsl:use-attribute-sets="__frontmatter__title">
                        <xsl:choose>
                            <xsl:when test="$map/*[contains(@class,' topic/title ')][1]">
                                <xsl:apply-templates select="$map/*[contains(@class,' topic/title ')][1]"/>
                            </xsl:when>
                            <xsl:when test="$map//*[contains(@class,' bookmap/mainbooktitle ')][1]">
                                <xsl:apply-templates select="$map//*[contains(@class,' bookmap/mainbooktitle ')][1]"/>
                            </xsl:when>
                            <xsl:when test="//*[contains(@class, ' map/map ')]/@title">
                                <xsl:value-of select="//*[contains(@class, ' map/map ')]/@title"/>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="/descendant::*[contains(@class, ' topic/topic ')][1]/*[contains(@class, ' topic/title ')]"/>
                            </xsl:otherwise>
                        </xsl:choose>
                    </fo:block>
								 
					 
                    <!-- set the subtitle -->
                    <xsl:apply-templates select="$map//*[contains(@class,' bookmap/booktitlealt ')]"/>

                    <fo:block xsl:use-attribute-sets="__frontmatter__owner">
                        <xsl:apply-templates select="$map//*[contains(@class,' bookmap/bookmeta ')]"/>
                    </fo:block>
                   
                </fo:block>

                <!--<xsl:call-template name="createPreface"/>-->
				
	
            </fo:flow>
        </fo:page-sequence>
        <xsl:call-template name="createNotices"/>
    </xsl:template>
    
    
    
    
    
    <!-- set the BodyOddFooter -->
    
    <xsl:template name="insertBodyOddFooter">
        <fo:static-content flow-name="odd-body-footer">
            <fo:block xsl:use-attribute-sets="__body__odd__footer">
                <xsl:call-template name="insertVariable">
                    <xsl:with-param name="theVariableID" select="'Body odd footer'"/>
                    <xsl:with-param name="theParameters">
                        <prodname>
                            <xsl:value-of select="$productName"/>
                        </prodname>
                        <heading>
                            <fo:inline xsl:use-attribute-sets="__body__odd__footer__heading">
                                <fo:retrieve-marker retrieve-class-name="current-header"/>
                            </fo:inline>
                        </heading>
                        <pagenum>
                            <fo:inline xsl:use-attribute-sets="__body__odd__footer__pagenum">
                                <fo:page-number/>
                            </fo:inline>
                        </pagenum>
                    </xsl:with-param>
                </xsl:call-template>
            </fo:block>
            
            
           <!--odd_Footer_Image -->
           <fo:block-container xsl:use-attribute-sets="__footer__image">
                <fo:block>
                    <fo:external-graphic src="url(Customization/OpenTopic/common/artwork/Pipe_apple.png)"/>
                </fo:block>
            </fo:block-container>
            
            
            
            
            <fo:block xsl:use-attribute-sets="__headerTitleText">
					<fo:inline xsl:use-attribute-sets="__body__odd__header__heading">
                                <fo:retrieve-marker retrieve-class-name="current-header"/>
                      </fo:inline>
      </fo:block>
           
	  	  
        
            
            
        </fo:static-content>
    </xsl:template>
        
        
    <!-- set the BodyEvenHeader -->
        
    <xsl:template name="insertBodyEvenHeader">
        
        <fo:static-content flow-name="even-body-header">
            <fo:block xsl:use-attribute-sets="__body__even__header">
                <xsl:call-template name="insertVariable">
                    <xsl:with-param name="theVariableID" select="'Body even header'"/>
                    <xsl:with-param name="theParameters">
                        <prodname>
                            <xsl:value-of select="$productName"/>
                        </prodname>
                        <heading>
                            <fo:inline xsl:use-attribute-sets="__body__even__header__heading">
                                <fo:retrieve-marker retrieve-class-name="current-header"/>
                            </fo:inline>
                        </heading>
                        <pagenum>
                            <fo:inline xsl:use-attribute-sets="__body__even__header__pagenum">
                                <fo:page-number/>
                            </fo:inline>
                        </pagenum>
                    </xsl:with-param>
                </xsl:call-template>
            </fo:block>
            
            <!--Even_Header-->
           <!-- 
            <fo:block-container xsl:use-attribute-sets="__headerBackground">
                <fo:block xsl:use-attribute-sets="__body__even__header">
                    {{Footer Details}}
                </fo:block>
                -->
                
                
            <!--</fo:block-container>-->
            
        </fo:static-content>
        
    </xsl:template>
            
            
                    
                
    <!-- set the BodyEvenFooter -->
                
    <xsl:template name="insertBodyEvenFooter"></xsl:template>
                    
                    
       
</xsl:stylesheet>
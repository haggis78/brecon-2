<?xml version="1.0" encoding="UTF-8"?>
<!-- AMA: The purpose for this XSLT is to create a display version of each edition as a separate html file. -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    xmlns="http://www.w3.org/1999/xhtml"
    version="3.0">
    
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat"
        omit-xml-declaration="yes"/>    
    
    <xsl:variable name="editionColl" as="node()+" select="//altIdentifier/note"/>
    <xsl:template match="/">
        <xsl:for-each select="$editionColl">
            <xsl:variable name="filename" as="xs:string">
                <xsl:value-of select="current() ! string()"/>
            </xsl:variable>
            <xsl:result-document method="xhtml" indent="yes" href="../docs/html/transcripts/display-{$filename}.html">
                <html>
                    <head>
                        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
                        <link rel="stylesheet" type="text/css" href="../../css/brecon.css" />
                        <link rel="icon" href="../../img/background/brecon-favicon.png"/>
                        <script src="../../js/variance-checkbox.js" type="text/javascript"></script>
                        <title>Brecon | Transcript <xsl:value-of select="current()"/></title>
                    </head>
                    <body>
                        <xsl:comment> Insert header and navbar here </xsl:comment>
                        <div class="content">
                            <h1><xsl:value-of select="(root()/descendant::title)[1]"/></h1>
                            <h2>Witness <xsl:value-of select="current()"/></h2>
                            <div class="transcript-about">
                                <xsl:apply-templates select="root()/descendant::bibl[data(@xml:id) = $filename]"/>
                                <xsl:apply-templates select="root()/descendant::msDesc[data(@xml:id) = $filename]"/><!--WHC: two apply-templates needed; any given witness will only have one or the other; the one it does not have will return an empty sequence-->
                            <hr/></div>
                            <div class="transcript-body">
                                <h3>Semi-diplomatic edition of this witness</h3>
                                <xsl:apply-templates select="root()/descendant::ab">
                                    <xsl:with-param name="currentEd" as="node()" select="current()"/>
                                </xsl:apply-templates>
                            </div>
                        </div>
                    </body>
                </html>
            </xsl:result-document>
        </xsl:for-each>
    </xsl:template>
    
    <xsl:template match="msDesc">
        <h3> <xsl:apply-templates select="descendant::repository"/>, <xsl:apply-templates select="descendant::settlement"/>, MS <xsl:value-of select="descendant::idno"/></h3>
        <p><b>Physical Description: </b></p><p><xsl:apply-templates select="descendant::physDesc"/></p>
        <p><b>Original Date of Manuscript: </b></p> <p><xsl:apply-templates select="descendant::origDate"/></p>
        <p><b>Source Description: </b></p><p><xsl:apply-templates select="descendant::provenance"/></p>
    </xsl:template>
    
    <xsl:template match="bibl">
        <h3>Bibliographic Information</h3>
        <p><b>Author: </b> <xsl:apply-templates select="descendant::author"/></p>
        <p><b>Title: </b> <em><xsl:apply-templates select="descendant::title"/></em></p>
        <p><b>Place of Publication: </b> <xsl:apply-templates select="descendant::pubPlace"/></p>
        <p><b>Date: </b> <xsl:apply-templates select="descendant::date"/></p>
        <p><b>Pages: </b> <xsl:apply-templates select="descendant::biblScope"/></p>
        <p><b>Note: </b> <xsl:apply-templates select="descendant::note"/></p>
        <p><b>Available online at: </b> <a href="{descendant::distributor}"><xsl:apply-templates select="descendant::distributor"/></a></p>
    </xsl:template>    
    
    <xsl:template match="root()/descendant::ab">
        <xsl:param name="currentEd"/>
        <xsl:for-each select=".">
            <p>
                <xsl:apply-templates>
                    <xsl:with-param name="currentEd" select="$currentEd" as="node()"/>
                </xsl:apply-templates>
            </p>
        </xsl:for-each>
    </xsl:template>
    
    <xsl:template match="root()/descendant::app">
        <xsl:param name="currentEd"/>
        <xsl:if test="rdg[contains(@wit, $currentEd ! string())]">
            <span class="variance">
                <!--<xsl:value-of select="rdg[@wit[contains(., $currentEd ! string())]]"/>-->
                <xsl:apply-templates select="rdg[@wit[contains(., $currentEd ! string())]]"/>
            </span>
        </xsl:if>
    </xsl:template>
    
    <xsl:template match="root()/descendant::add[@place='above']">
        <sup><xsl:apply-templates/></sup>
    </xsl:template>
    
    <xsl:template match="root()/descendant::add[@place='below']">
        <sub><xsl:apply-templates/></sub>
    </xsl:template>
    
    <xsl:template match="root()/descendant::add[@place='margin']">
        [<i>added in margin: </i><xsl:apply-templates/>]
    </xsl:template>
    
    <xsl:template match="root()/descendant::add[@place='inline']">
        [<i>added inline: </i><xsl:apply-templates/>]
    </xsl:template>
    
    <xsl:template match="root()/descendant::hi[@rend='underline']">
        <u><xsl:apply-templates/></u>
    </xsl:template>

    <xsl:template match="root()/descendant::hi[@rend='sup']">
        <sup><xsl:apply-templates/></sup>
    </xsl:template>
    
    <xsl:template match="root()/descendant::hi[@rend='italics']">
        <i><xsl:apply-templates/></i>
    </xsl:template>
    
    <xsl:template match="root()/descendant::del[@rend='strikethrough']">
        <s><xsl:apply-templates/></s>
    </xsl:template>
    
    <xsl:template match="root()/descendant::del[@rend='overwritten']">
        <s><xsl:apply-templates/></s>[overwritten]
    </xsl:template>   
</xsl:stylesheet>
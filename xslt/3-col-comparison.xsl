<?xml version="1.0" encoding="UTF-8"?>
<!-- AMA: The purpose of this XSLT is to output the comparison.html page with three columns. -->
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
        <xsl:result-document method="xhtml" indent="yes" href="../docs/html/reading-views/3-col-comparison.html">
            <html xmlns="http://www.w3.org/1999/xhtml">
                <head>
                    <link rel="stylesheet" type="text/css" href="../../css/brecon.css" />
                    <link rel="icon" href="../../img/background/brecon-favicon.png" />
                    <script src="../../js/comp-checkbox.js" type="text/javascript"></script>
                    <title>Brecon | Comparison</title>
                </head>
                <body>
                    <div class="header">
                        <h1 class="header-text">Foundation of Christ College Brecon</h1>
                    </div>

                    
                    <div id="navbar">
                        <div class="navbar">
                            <!-- Insert navbar here -->
                        </div>
                    
                    <p class="content" style="text-align:center;"><i>Using the tickboxes below, select any three witnesses to compare. Areas where copies differ are shown in <span class="variances">red text</span>.</i></p>
                   
                        <div class="checkbox-nav">
                            <div class="comp-checkbox">
                                <label><input type="checkbox" id="leftCompBnav" onclick="leftCompB()"/>B<br /></label>
                                <label><input type="checkbox" id="leftCompCnav" onclick="leftCompC()"/>C<br /></label>
                                <label><input type="checkbox" id="leftCompDnav" onclick="leftCompD()"/>D<br /></label>
                                <label><input type="checkbox" id="leftCompInav" onclick="leftCompI()"/>I<br /></label>
                                <label><input type="checkbox" id="leftCompJnav" onclick="leftCompJ()"/>J<br /></label>
                                <label><input type="checkbox" id="leftCompOnav" onclick="leftCompO()"/>O<br /></label>
                                <label><input type="checkbox" id="leftCompRnav" onclick="leftCompR()"/>R<br /></label>
                                <label><input type="checkbox" id="leftCompSnav" onclick="leftCompS()"/>S<br /></label>
                                <label><input type="checkbox" id="leftCompWnav" onclick="leftCompW()"/>W<br /></label>
                                <label><input type="checkbox" id="leftCompYnav" onclick="leftCompY()"/>Y<br /></label>
                                <label><input type="checkbox" id="leftCompZnav" onclick="leftCompZ()"/>Z<br /></label>
                            </div>
                            <div class="comp-checkbox">
                                <label><input type="checkbox" id="centerCompBnav" onclick="centerCompB()"/>B<br /></label>
                                <label><input type="checkbox" id="centerCompCnav" onclick="centerCompC()"/>C<br /></label>
                                <label><input type="checkbox" id="centerCompDnav" onclick="centerCompD()"/>D<br /></label>
                                <label><input type="checkbox" id="centerCompInav" onclick="centerCompI()"/>I<br /></label>
                                <label><input type="checkbox" id="centerCompJnav" onclick="centerCompJ()"/>J<br /></label>
                                <label><input type="checkbox" id="centerCompOnav" onclick="centerCompO()"/>O<br /></label>
                                <label><input type="checkbox" id="centerCompRnav" onclick="centerCompR()"/>R<br /></label>
                                <label><input type="checkbox" id="centerCompSnav" onclick="centerCompS()"/>S<br /></label>
                                <label><input type="checkbox" id="centerCompWnav" onclick="centerCompW()"/>W<br /></label>
                                <label><input type="checkbox" id="centerCompYnav" onclick="centerCompY()"/>Y<br /></label>
                                <label><input type="checkbox" id="centerCompZnav" onclick="centerCompZ()"/>Z<br /></label>
                            </div>
                            <div class="comp-checkbox">
                                <label><input type="checkbox" id="rightCompBnav" onclick="rightCompB()"/>B<br /></label>
                                <label><input type="checkbox" id="rightCompCnav" onclick="rightCompC()"/>C<br /></label>
                                <label><input type="checkbox" id="rightCompDnav" onclick="rightCompD()"/>D<br /></label>
                                <label><input type="checkbox" id="rightCompInav" onclick="rightCompI()"/>I<br /></label>
                                <label><input type="checkbox" id="rightCompJnav" onclick="rightCompJ()"/>J<br /></label>
                                <label><input type="checkbox" id="rightCompOnav" onclick="rightCompO()"/>O<br /></label>
                                <label><input type="checkbox" id="rightCompRnav" onclick="rightCompR()"/>R<br /></label>
                                <label><input type="checkbox" id="rightCompSnav" onclick="rightCompS()"/>S<br /></label>
                                <label><input type="checkbox" id="rightCompWnav" onclick="rightCompW()"/>W<br /></label>
                                <label><input type="checkbox" id="rightCompYnav" onclick="rightCompY()"/>Y<br /></label>
                                <label><input type="checkbox" id="rightCompZnav" onclick="rightCompZ()"/>Z<br /></label>
                            </div>
                        </div>
                    </div>

                    <div class="content">
                        <div class="comparison">
                            <!--WHC: the following section creates the three columns-->
                            <div class="container">
                                <xsl:for-each select="$editionColl">
                                    <div id="leftComp{current()}" style="display:none">
                                        <xsl:apply-templates select="root()/descendant::ab">
                                            <xsl:with-param name="currentEd" as="node()" select="current()"/>
                                        </xsl:apply-templates>
                                    </div>
                                </xsl:for-each>
                            </div>
                            <div class="container">
                                <xsl:for-each select="$editionColl">
                                    <div id="centerComp{current()}" style="display:none">
                                        <xsl:apply-templates select="root()/descendant::ab">
                                            <xsl:with-param name="currentEd" as="node()" select="current()"/>
                                        </xsl:apply-templates>
                                    </div>
                                </xsl:for-each>
                            </div>
                            <div class="container">
                                <xsl:for-each select="$editionColl">
                                    <div id="rightComp{current()}" style="display:none">
                                        <xsl:apply-templates select="root()/descendant::ab">
                                            <xsl:with-param name="currentEd" as="node()" select="current()"/>
                                        </xsl:apply-templates>
                                    </div>
                                </xsl:for-each>
                            </div>
                        </div>
                    </div>
                </body>
            </html>
        </xsl:result-document>
    </xsl:template>
    <xsl:template match="root()/descendant::ab">
        <xsl:param name="currentEd"/>
        <xsl:for-each select=".">
            <p><xsl:text>[§ </xsl:text><xsl:value-of select="@n"/><xsl:text>] </xsl:text>
                <xsl:apply-templates>
                    <xsl:with-param name="currentEd" select="$currentEd" as="node()"/>
                </xsl:apply-templates>
            </p>
        </xsl:for-each>
    </xsl:template>
    <xsl:template match="root()/descendant::app">
        <xsl:param name="currentEd"/>
        <xsl:if test="rdg[contains(@wit, $currentEd ! string())]">
            <span class="variances">
                <xsl:value-of select="rdg[@wit[contains(., $currentEd ! string())]]"/>
            </span>
         
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>
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
        <xsl:result-document method="xhtml" indent="yes" href="../docs/html/comparison/comparison.html">
            <html xmlns="http://www.w3.org/1999/xhtml">
                <head>
                    <link rel="stylesheet" type="text/css" href="../../css/brecon.css" />
                    <link rel="icon" href="../../img/background/brecon-favicon.png" />
                    <script src="../../js/comp-checkbox.js" type="text/javascript"></script>
                    <title>Brecon | Comparison</title>
                </head>
                <body>
                    <xsl:comment>Insert header, navbar here</xsl:comment>
                    
                    <div id="navbar">
                        <div class="navbar">
                            <a href="../index.html">Home</a>
                            <div class="dropdown">
                                <button class="dropbtn">About<i class="fa fa-caret-down"></i>
                                </button>
                                <div class="dropdown-content">
                                    <a href="../about/history.html">History</a>
                                    <a href="../about/Glossary.html">Glossary</a>
                                    <a href="../about/BreconPeople.html">People</a>
                                    <a href="../about/methodology.html">Methodology</a>
                                    <a href="../about/Project_Team.html">About Team</a>
                                </div>
                            </div>
                            <div class="dropdown">
                                <button class="dropbtn">Analysis<i class="fa fa-caret-down"></i>
                                </button>
                                <div class="dropdown-content">
                                    <a href="../analysis/Timeline.html">Timeline</a>
                                    <a href="../analysis/TextualAnalysis.html#codicum">Stemma</a>
                                    <a href="../analysis/Graphs.html">Graphs</a>
                                    <a href="../analysis/string-length-heat-map.html">String Length Heat Map</a>
                                    <a href="../analysis/similarity-heat-map.html">App Similarity Heat Map</a>
                                    <a href="../analysis/network.html">Network</a>
                                    <a href="../analysis/TextualAnalysis.html">Textual</a>
                                </div>
                            </div>
                            <div class="dropdown">
                                <button class="dropbtn">Witnesses<i class="fa fa-caret-down"></i>
                                </button>
                                <div class="dropdown-content">
                                    <a href="../witnesses/texts.html">Source Descriptions</a>
                                    <a href="../witnesses/patent-collection.html">Patent Roll</a>
                                    <a href="../witnesses/display-R.html">Manuscript R</a>
                                    <a href="../witnesses/display-C.html">Manuscript C</a>
                                    <a href="../witnesses/display-D.html">Manuscript D</a>
                                    <a href="../witnesses/display-I.html">Manuscript I</a>
                                    <a href="../witnesses/display-O.html">Manuscript O</a>
                                    <a href="../witnesses/display-W.html">Printing W</a>
                                    <a href="../witnesses/display-S.html">Printing S</a>
                                    <a href="../witnesses/display-J.html">Printing J</a>
                                </div>
                            </div>
                            <div class="dropdown">
                                <button class="dropbtn">Comparison<i class="fa fa-caret-down"></i>
                                </button>
                                <div class="dropdown-content">
                                    <a href="comparison.html">Transcripts</a>
                                    <a href="edition2.html">Anonymous Blocks</a>
                                </div>
                            </div>
                        </div>
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
            <p><xsl:text>[Section </xsl:text><xsl:value-of select="@n"/><xsl:text>] </xsl:text>
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
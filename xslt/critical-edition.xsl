<?xml version="1.0" encoding="UTF-8"?>
<!--WHC 7/8/26: The purpose of this stylesheet is to generate a critical edition, with Z as the base text and with critical apparatus showing variations from it.-->
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
    
    <xsl:template match="doc('../xml/CharterCollation.xml')">
        <xsl:result-document method="xhtml" indent="yes" href="../docs/html/reading-views/critical-edition.html">
        <html>
            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
                <link rel="stylesheet" type="text/css" href="../../css/brecon.css" />
                <link rel="icon" href="../../img/background/brecon-favicon.png"/>
                <script></script>
                <title>Brecon | Critical edition</title>
            </head>
            <body>
                <div class="header">
                    <h1 class="header-text">Foundation of Christ College Brecon</h1>
                </div>
                <div id="navbar">
                    <div class="navbar">
                        <a href="../../index.html">Home</a>
                        <div class="dropdown">
                            <button class="dropbtn">About<i class="fa fa-caret-down"></i>
                            </button>
                            <div class="dropdown-content">
                                <a href="../about/history.html">History</a>
                                <a href="../about/timeline.html">Timeline</a>
                                <a href="../about/letters-patent.html">Letters Patent</a>
                                <a href="../about/glossary.html">Glossary</a>
                                <a href="../about/Brecon-people.html">People</a>
                                <a href="../about/methodology.html">Methodology</a>
                                <a href="../about/project-team.html">About Team</a>
                            </div>
                        </div>
                        
                        <div class="dropdown">
                            <button class="dropbtn">Text<i class="fa fa-caret-down"></i>
                            </button>
                            <div class="dropdown-content">
                                <a href="../about/texts.html">Source Documents</a>
                                <a href="reading-views.html">Editions and Reading Views</a>
                            </div>
                        </div>
                        <a href="../analysis/textual-analysis.html">Analysis</a>
                    </div>
                </div>
                
                <div class="content">
                    <h1>Critical edition</h1>
                    <h2>Introduction</h2>
                    <p>The official version of the Letters Patent was that issued under the Great Seal, a single large sheet of parchment that would have been sent to St Davids and, following the functional establishment of Christ College Brecon, physically preserved at Brecon, with the bishop of St Davids' records, or with the Cathedral Chapter's records. (Most likely all three at least had copies of the text.) The sealed original does not survive, and indeed the variations amongst the later manuscript witnesses (BCDIO) and the earliest printing (W) suggest that it had already disappeared by the eighteenth century. As the College was closed as an institution and its buildings severely damaged during the Civil Wars of the 1640s, this seems the most probable period for its loss.</p>
                    <p>Within the stemma of copies, the closest to the issued text is Witness Z, the Warrant in Chancery that served both as the direct draft from which the Letters Patent were copied and as the official commission to engross, seal, and issue the document. The second-closest is Witness R, the Chancery Patent Roll, which was itself also copied from Z, and the third-closest is Witness Y, the Privy Seal Warrant, which preceded the Warrant in Chancery and was used as its draft. In general, readings from Z should be preferred to all others, with a few exceptions.</p> 
                    <p>First, there are short passages at the beginning and end of the Warrant in Chancery that pertain to its particular stage in the process: these would not have appeared in the Letters Patent as issued. Some other witnesses provide versions of standard forms used on Letters Patent; these can be compared with <a href="../about/letters-patent.html">surviving issued Letters Patent of Henry VIII</a>. <a href="https://www.textmanuscripts.com/tm-assets/tm-descriptions/descriptions-spring-23/TM%201134%20Ely%20Cathedral%20documents%20SH%20FINAL.pdf">One example from September 1541</a>--less than two years after the Brecon charter was issued--begins with this salutation:</p> 
                    <ul><li>Henricus octavius dei gratia Anglie et Francie Rex fidei Defensor Dominus hibernie et in ter[ra] supremum Caput Anglicane Ecclesie Omibus [sic.] ad quos presentes tuo pervenerint Salutem.</li></ul>
                    <p>Other surviving Letters Patent share essentially the same salutation, though occasionally word order is transposed. <a href="https://nycroblog.com/2025/09/25/north-yorkshire-archive-treasures-royal-documents/#jp-carousel-23203">Another example from 1546</a> begins almost identically to the September 1541 example quoted above, though it spells out "omnibus" in full, does not include "tuo", and asserts Henry's claim to be "Anglie Francie et Hibernie Rex". As <a href="https://en.wikipedia.org/wiki/Tudor_conquest_of_Ireland">Henry did not claim to be King of Ireland until 1542</a>, the salutation of the 1540 Brecon document would still have identified Henry only as lord of Ireland.</p>
                    
                    <p>Second, the scribes of manuscripts Y and Z often abbreviated their Latin words. Medieval Latin scribes routinely abbreviated to save parchment, but they normally used <a href="https://archive.org/details/CappelliDizionarioDiAbbreviature">a large number of suspension marks</a> that indicated with some specificity which letters had been left out. The scribes of Y and Z, and to a lesser extent R, frequently omitted the last few letters of a word--the ending that would indicate a noun's gender, number, and case, or a verb's tense, number, person, and mood--and indicated the omission with a non-specific backward curl similar to an apostrophe. No doubt this did not pose a problem for them because they were deeply familiar with the legal turns of phrase in such documents. Later copyists had to make conjectures about what these endings should have been, and their differing conjectures account for many of the differences among the copies collated for this edition. Z is the most extensively abbreviated of all of our copies, and expansions supplied by Y and R, written by different scribes but in the same time and professional setting, are the best indication of how the Z scribe intended his words to end.</p>
                    <h2>Text</h2>
                    <!--WHC: first need to establish ab 1 using text supplied by other engrossed Letters Patent, and alternate readings as given in all other witnesses-->
                    <table class="crit-variant">
                        <tr>
                            <td class="crit-variant" style="width:50%">[§ 1] Henricus Octavius dei gratia Anglie et Francie Rex Fidei Defensor Dominus Hibernie et in terra supremum caput Anglicane Ecclesie Omnibus ad quos presentes pervenerint Salutem. <br/>[Source: other surviving sealed Letters Patent as cited above]</td>
                            <td class="crit-variant"><details><summary><b>Salutation variants</b> (click to expand/collapse)</summary>
                                    <ul  class="crit-variant">
                            <xsl:for-each select="$editionColl">
                                <xsl:sort select="current() ! string()"/>
                                <li><b><xsl:value-of select="current() ! string()"/>:</b> 
                                    <xsl:apply-templates select="root()/descendant::ab[@n='1']" mode="ab1">
                                        <xsl:with-param name="currentEd" as="node()" select="current()"/>
                                    </xsl:apply-templates></li>
                            </xsl:for-each>
                        </ul>
                    </details></td>
                        </tr>
 
 <!--WHC: the following for-loop generates one table row for each ab in the xml-->
                        <xsl:for-each select="//text/body/ab[@n>1]">
                            <tr>
                                <td class="crit-variant">
                                    <b><xsl:text>[§ </xsl:text><xsl:value-of select="@n"/><xsl:text>] </xsl:text></b>
                                    <xsl:apply-templates select="." mode="Z-ab"/></td><!--to select Z readings-->
                                
                                <td class="crit-variant"><b><xsl:text>§ </xsl:text><xsl:value-of select="@n"/> Variants</b> (click each to expand/collapse)
                                    <!--WHC: the following for-loop creates one details/summary for each app-->
                                            <xsl:for-each select=".//app">
                                                <details><summary>
                                                        <sup><xsl:value-of select="count(preceding-sibling::app) + 1"/></sup><!--WHC: this assigns sequential  numbers to each app for easier cross-reference between text and apparatus-->
                                                        <span class="crit-variant"><xsl:apply-templates select="rdg[@wit[contains(., 'Z')]]"/></span></summary> 
                                                    <ul class="crit-variant">
                                    <!--WHC: the following for-loop generates one li for every rdg-->
                                                    <xsl:for-each select=".//rdg">
         <!--WHC: the following function sequence tokenizes the @wit string, then does an alphabetical sort of the tokens, then removes the hashes and string-joins the remaining letters with no space separator-->
                                                        <li><xsl:value-of select="string-join(sort(tokenize(@wit) ! translate(., '#', '')), '')"/>: <xsl:apply-templates/></li>
                                                    </xsl:for-each></ul>
                                                    </details>
                                            </xsl:for-each>
                                        
                                </td>
                            </tr>
                        </xsl:for-each>
                        
                    </table>
                </div>

            </body>
        </html>
        </xsl:result-document>
    </xsl:template>
    
    <xsl:template match="ab" mode="ab1">
        <xsl:param name="currentEd"/>
                <xsl:apply-templates mode="ab1-reading">
                    <xsl:with-param name="currentEd" select="$currentEd" as="node()"/>
                </xsl:apply-templates>
    </xsl:template>
    
    <xsl:template match="app" mode="ab1-reading">
        <xsl:param name="currentEd"/>
        <xsl:if test="rdg[contains(@wit, $currentEd ! string())]">
                <xsl:apply-templates select="rdg[@wit[contains(., $currentEd ! string())]]"/>
        </xsl:if>
    </xsl:template>
    
    <xsl:template match="ab" mode="Z-ab">
        <xsl:apply-templates mode="Z-readings"/>
    </xsl:template>
    
    <xsl:template match="app" mode="Z-readings">
        <sup><xsl:value-of select="count(preceding-sibling::app) + 1"/></sup>
        <xsl:if test="rdg[contains(@wit, 'Z')]">
            <span class="crit-variant"><xsl:apply-templates select="rdg[@wit[contains(., 'Z')]]"/></span>
        </xsl:if>
    </xsl:template>
    






    <xsl:template match="add[@place='above']">
        <sup><xsl:apply-templates/></sup>
    </xsl:template>
    
    <xsl:template match="add[@place='below']">
        <sub><xsl:apply-templates/></sub>
    </xsl:template>
    
    <xsl:template match="add[@place='margin']">
        [<i>added in margin: </i><xsl:apply-templates/>]
    </xsl:template>
    
    <xsl:template match="add[@place='inline']">
        [<i>added inline: </i><xsl:apply-templates/>]
    </xsl:template>
    
    <xsl:template match="hi[@rend='underline']">
        <u><xsl:apply-templates/></u>
    </xsl:template>
    
    <xsl:template match="hi[@rend='sup']">
        <sup><xsl:apply-templates/></sup>
    </xsl:template>
    
    <xsl:template match="hi[@rend='italics']">
        <i><xsl:apply-templates/></i>
    </xsl:template>
    
    <xsl:template match="del[@rend='strikethrough']">
        <s><xsl:apply-templates/></s>
    </xsl:template>
    
    <xsl:template match="del[@rend='overwritten']">
        <s><xsl:apply-templates/></s>[overwritten]
    </xsl:template>   
    

</xsl:stylesheet>
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
    <xsl:template match="/">
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
                    <p>The official version of the Letters Patent was that issued under the Great Seal, a single large sheet of parchment that would have been sent to St Davids and, following the functional establishment of Christ College Brecon, physically preserved there, with the bishop of St Davids' records, or with the Cathedral Chapter's records. (Most likely all three at least had copies of the text.) The sealed original does not survive, and indeed the variations amongst the later manuscript witnesses (BCDIO) and the earliest printing (W) suggest that it had already disappeared by the eighteenth century. As the College was closed as an institution and its buildings severely damaged during the Civil War, this seems the most probable period for its loss.</p>
                    <p>Within the stemma of copies, the closest to the issued text is Witness Z, the Warrant in Chancery that served both as the direct draft from which the Letters Patent were copied and as the official commission to engross, seal, and issue the document. The second-closest is Witness R, the Chancery Patent Roll, which was itself also copied from Z, and the third-closest is Witness Y, the Privy Seal Warrant, which preceded the Warrant in Chancery and was used as its draft. In general, readings from Z should be preferred to all others, with a few exceptions.</p> 
                    <p>First, there are short passages at the beginning and end of the Warrant in Chancery that pertain to its particular stage in the process: these would not have appeared in the Letters Patent as issued. Some other witnesses provide versions of standard forms used on Letters Patent; these can be compared with <a href="../about/letters-patent.html">surviving issued Letters Patent of Henry VIII</a>. <a href="https://www.textmanuscripts.com/tm-assets/tm-descriptions/descriptions-spring-23/TM%201134%20Ely%20Cathedral%20documents%20SH%20FINAL.pdf">One example from September 1541</a>--less than two years after the Brecon charter was issued--begins:</p> 
                    <ul><li>Henricus octavius dei gratia Anglie et Francie Rex fidei Defensor Dominus hibernie et in ter[ra] supremum Caput Anglicane Ecclesis Omibus [sic.] ad quos presentes tuo pervenerint Salutem.</li></ul>
                    <p>Other surviving Letters Patent begin almost identically, though occasionally word order is transposed. <a href="https://nycroblog.com/2025/09/25/north-yorkshire-archive-treasures-royal-documents/#jp-carousel-23203">Another example from 1546</a> begins almost identically except for asserting Henry's claim to be "Anglie Francie et Hibernie Rex". As <a href="https://en.wikipedia.org/wiki/Tudor_conquest_of_Ireland">Henry did not claim to be King of Ireland until 1542</a>, the salutation of the 1540 Brecon document should have been in accord with that of September 1541.</p>
                    
                    <p>Second, the scribes of manuscripts Y and Z often abbreviated their Latin words. Medieval Latin scribes routinely abbreviated words to save parchment, but they normally used <a href="https://archive.org/details/CappelliDizionarioDiAbbreviature">a large number of suspension marks</a> that indicated with some specificity which letters had been left out. The scribes of Y and Z, and to a lesser extent R, frequently omitted the last few letters of a word--the ending that would indicate a noun's gender, number, and case, or a verb's tense, number, person, and mood--and indicated the omission with a non-specific backward curl similar to an apostrophe. No doubt this did not pose a problem for them because they were deeply familiar with the legal turns of phrase in such documents. Later copyists had to make conjectures about what these endings should have been, and their differing conjectures account for many of the differences among the copies collated for this edition. Z is the most extensively abbreviated of all of our copies, and expansions supplied by Y and R, written by different scribes but in the same time and professional setting, are the best indication of how the Z scribe intended his words to end.</p>
                    
                </div>
            </body>
        </html>
        </xsl:result-document>
    </xsl:template>
    
</xsl:stylesheet>
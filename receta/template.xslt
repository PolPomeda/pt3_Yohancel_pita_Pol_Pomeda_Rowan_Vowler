<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <header>
        <div class="head" style="width: 100%;height: 15%">
            <div class="head_photo" style="text-align:center"><img src="../images/Logo-Delicias.png"/></div>
            <div class="head_index" style="margin-top: 1%; text-align: center; border-style: solid; border-radius: 1px; border-left: 0px; border-right: 0px; border-color: #8A8070; padding: 0.5%; font-size: large; text-transform: uppercase; font-weight: 500; font-family: Arial, Helvetica, sans-serif">
                <a class="head_index_link" style="padding: 0.75%; color: black" href="../index.html">Inici</a>
                <a class="head_index_link" style="padding: 0.75%; color: black" href="">Sobre mi</a>
                <a class="head_index_link" style="padding: 0.75%; color: black" href="recetas.xml">Receptes</a>
                <a class="head_index_link" style="padding: 0.75%; color: black" href="../contacto/contacto.html">Contacte</a>
                <a class="head_index_link" style="padding: 0.75%; color: black" href="">Altres coses</a>
            </div>
        </div>                               
    </header>
<body>
    <div class="receptes_titol" style="padding-top: 1%; padding-bottom: 1%; text-align: center">
        <h1>Llistat de Receptes</h1>
    </div>

    <xsl:for-each select="recetas/receta">
    <div class="receta" style="float: left; padding-left: 1%; padding-right: 1%; width: 31%; margin-top: 1%; margin-bottom: 1%">
        <a>
            <xsl:attribute name="href">
                <xsl:value-of select="@link"/>
            </xsl:attribute> 
        </a>
        <img class="receta_img" style="text-align: center; width: 100%; height: 400px">
            <xsl:attribute name="src">
                <xsl:value-of select="foto//@src"/>
            </xsl:attribute>
        </img>
        <div class="receta_titol" style="width: 94%; text-align: center; font-weight: 800; padding: 3%; font-size: x-large"><xsl:value-of select="nom"/></div>
        <div class="receta_data" style="width: 100%; text-align: center; border-left: 0px; border-right: 0px; border-color: #7ABA96; border-style: solid;"><xsl:value-of select="temps"/></div>
        <div class="recepta_dificultat" style="width: 100%; text-align: center; border-left: 0px; border-right: 0px; border-top: 0px; border-color: #7ABA96; border-style: solid;"><xsl:value-of select="dificultat"/></div>
        <div class="receta_text" style="padding-top: 2%; text-align: center"><xsl:value-of select="text"/></div>
    </div>
    </xsl:for-each>
    <footer>
        <div class="footer" style="background-color: black; text-align:center; float: left; width: 100%; margin-top: 2%">
            <a class="footer_link" style="padding: 3%; padding-left: 1%; padding-right: 1%; color:white; display: inline-block; font-family: Arial, Helvetica, sans-serif" href="https://facebook.com">FACEBOOK</a>
            <a class="footer_link" style="padding: 3%; padding-left: 1%; padding-right: 1%; color:white; display: inline-block; font-family: Arial, Helvetica, sans-serif" href="https://twitter.com">TWITTER</a>
            <a class="footer_link" style="padding: 3%; padding-left: 1%; padding-right: 1%; color:white; display: inline-block; font-family: Arial, Helvetica, sans-serif" href="https://instagram.com">INSTAGRAM</a>
            <a class="footer_link" style="padding: 3%; padding-left: 1%; padding-right: 1%; color:white; display: inline-block; font-family: Arial, Helvetica, sans-serif" href="https://pinterest.com">PINTEREST</a>
            <a class="footer_link" style="padding: 3%; padding-left: 1%; padding-right: 1%; color:white; display: inline-block; font-family: Arial, Helvetica, sans-serif" href="">EMAIL</a>
            <a class="footer_link" style="padding: 3%; padding-left: 1%; padding-right: 1%; color:white; display: inline-block; font-family: Arial, Helvetica, sans-serif" href="">RSS</a>
        </div>
    </footer>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet 
   version="1.0" 
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="xml" encoding="ISO-8859-1"/>

	<xsl:template match="/catálogo" >
		<livros>
			<xsl:apply-templates select="livro"/>
		</livros>
	</xsl:template>

	<xsl:template match="livro">
		<título_editora>
			 <xsl:value-of select="título"/>
			 ,
			 <xsl:value-of select="editora"/>
		</título_editora>
	</xsl:template>
</xsl:stylesheet>


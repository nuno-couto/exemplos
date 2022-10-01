<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet 
	version="1.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html" encoding="ISO-8859-1"/>

<xsl:template match="/catálogo" >
	<html><body><table border="1">
		<xsl:for-each select="livro">
			<tr>
				<td> <xsl:value-of select="título"/> </td>
				<td>
					<xsl:for-each select="autores/autor">
						<xsl:value-of select="."/><br/>
					</xsl:for-each>
				</td>
				<td> <xsl:value-of select="editora"/> </td>
				<td> <xsl:value-of select="ISBN"/> </td>
				<td> <xsl:value-of select="preço"/> </td>
				<td> <xsl:value-of select="dataPublicação"/> </td>
			</tr>
 		</xsl:for-each>
	</table></body></html>
</xsl:template>

</xsl:stylesheet>





<?xml version="1.0" encoding="UTF-8"?>
<!-- This stylesheet is used with the family xml files when importing into excel
-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<!-- Output as html file -->
<xsl:output method="html"/>

<!-- find the root -->
<xsl:template match="/">
    <!-- Create a table with headings, then search for children -->
    <TABLE>
	<TR>
	    <TH>Instrument</TH>
            <TH></TH>
            <TH></TH>
	</TR>
	<xsl:apply-templates select="samples">
	</xsl:apply-templates>
    </TABLE>        
    <TABLE>
	<TR>
	    <TH>Date</TH>
	    <TH>Sequence ID</TH>
	    <TH>APNA</TH>
	    <TH>ASPM</TH>
	    <TH>IID</TH>
	    <TH>ID</TH>
	    <TH>SORC</TH>
	    <TH>ASPS</TH>
	    <TH>BLMD</TH>
	    <TH>BLNK</TH>
	    <TH>ASWP</TH>
	    <TH>WDMA</TH>
	    <TH>CLVL</TH>
	    <TH>CEXP</TH>
	    <TH>RDPN</TH>
	    <TH>RDED</TH>
	    <TH>RLLI</TH>
	    <TH>RLPN</TH>
	    <TH>RLED</TH>
	    <TH>RCLI</TH>
	    <TH>RCPN</TH>
	    <TH>RCED</TH>
	    <TH>RBC</TH>
	    <TH>RBC_L</TH>
	    <TH>RBC_H</TH>
	    <TH>RBC_F</TH>
	    <TH>RBC_O</TH>
	    <TH>MCV</TH>
	    <TH>MCV_L</TH>
	    <TH>MCV_H</TH>
	    <TH>MCV_F</TH>
	    <TH>MCV_O</TH>
	    <TH>HCT</TH>
	    <TH>HCT_L</TH>
	    <TH>HCT_H</TH>
	    <TH>HCT_F</TH>
	    <TH>HCT_O</TH>
	    <TH>MCH</TH>
	    <TH>MCH_L</TH>
	    <TH>MCH_H</TH>
	    <TH>MCH_F</TH>
	    <TH>MCH_O</TH>
	    <TH>MCHC</TH>
	    <TH>MCHC_L</TH>
	    <TH>MCHC_H</TH>
	    <TH>MCHC_F</TH>
	    <TH>MCHC_O</TH>
	    <TH>RDWR</TH>
	    <TH>RDWR_L</TH>
	    <TH>RDWR_H</TH>
	    <TH>RDWR_F</TH>
	    <TH>RDWR_O</TH>
	    <TH>RDWA</TH>
	    <TH>RDWA_L</TH>
	    <TH>RDWA_H</TH>
	    <TH>RDWA_F</TH>
	    <TH>RDWA_O</TH>
	    <TH>PLT</TH>
	    <TH>PLT_L</TH>
	    <TH>PLT_H</TH>
	    <TH>PLT_F</TH>
	    <TH>PLT_O</TH>
	    <TH>MPV</TH>
	    <TH>MPV_L</TH>
	    <TH>MPV_H</TH>
	    <TH>MPV_F</TH>
	    <TH>MPV_O</TH>
	    <TH>PCT</TH>
	    <TH>PCT_L</TH>
	    <TH>PCT_H</TH>
	    <TH>PCT_F</TH>
	    <TH>PCT_O</TH>
	    <TH>PDW</TH>
	    <TH>PDW_L</TH>
	    <TH>PDW_H</TH>
	    <TH>PDW_F</TH>
	    <TH>PDW_O</TH>
	    <TH>LPCR</TH>
	    <TH>LPCR_L</TH>
	    <TH>LPCR_H</TH>
	    <TH>LPCR_F</TH>
	    <TH>LPCR_O</TH>
	    <TH>HGB</TH>
	    <TH>HGB_L</TH>
	    <TH>HGB_H</TH>
	    <TH>HGB_F</TH>
	    <TH>HGB_O</TH>
	    <TH>WBC</TH>
	    <TH>WBC_L</TH>
	    <TH>WBC_H</TH>
	    <TH>WBC_F</TH>
	    <TH>WBC_O</TH>
	    <TH>LA</TH>
	    <TH>LA_L</TH>
	    <TH>LA_H</TH>
	    <TH>LA_F</TH>
	    <TH>LA_O</TH>
	    <TH>MA</TH>
	    <TH>MA_L</TH>
	    <TH>MA_H</TH>
	    <TH>MA_F</TH>
	    <TH>MA_O</TH>
	    <TH>GA</TH>
	    <TH>GA_L</TH>
	    <TH>GA_H</TH>
	    <TH>GA_F</TH>
	    <TH>GA_O</TH>
	    <TH>LR</TH>
	    <TH>LR_L</TH>
	    <TH>LR_H</TH>
	    <TH>LR_F</TH>
	    <TH>LR_O</TH>
	    <TH>MR</TH>
	    <TH>MR_L</TH>
	    <TH>MR_H</TH>
	    <TH>MR_F</TH>
	    <TH>MR_O</TH>
	    <TH>GR</TH>
	    <TH>GR_L</TH>
	    <TH>GR_H</TH>
	    <TH>GR_F</TH>
	    <TH>GR_O</TH>
	</TR>
	<xsl:apply-templates select="samples/sample">
	<xsl:sort select="@DATE" order="ascending"/>
	</xsl:apply-templates>
    </TABLE>        
</xsl:template>

<!-- Process and output child elements -->
<xsl:template match="samples">
    <TR>
	<TD> <xsl:value-of select="@SNO"/> </TD>
        <TD></TD>
        <TD></TD>
    </TR>
</xsl:template>

<xsl:template match="samples/sample">
    <TR>
	<TD> <xsl:value-of select="@DATE"/> </TD>
	<TD> <xsl:value-of select="@SEQ"/> </TD>
	<TD> <xsl:value-of select="@APNA"/> </TD>
        <TD> <xsl:value-of select="@ASPM"/> </TD>
        <TD> <xsl:value-of select="@IID"/> </TD>
        <TD> <xsl:value-of select="@ID"/> </TD>
        <TD> <xsl:value-of select="@SORC"/> </TD>
        <TD> <xsl:value-of select="@ASPS"/> </TD>
        <TD> <xsl:value-of select="@BLMD"/> </TD>
        <TD> <xsl:value-of select="@BLNK"/> </TD>
        <TD> <xsl:value-of select="@ASWP"/> </TD>
        <TD> <xsl:value-of select="@WDMA"/> </TD>
        <TD> <xsl:value-of select="@CLVL"/> </TD>
        <TD> <xsl:value-of select="@CEXP"/> </TD>
        <TD> <xsl:value-of select="@RDPN"/> </TD>
        <TD> <xsl:value-of select="@RDED"/> </TD>
        <TD> <xsl:value-of select="@RLLI"/> </TD>
        <TD> <xsl:value-of select="@RLPN"/> </TD>
        <TD> <xsl:value-of select="@RLED"/> </TD>
        <TD> <xsl:value-of select="@RCLI"/> </TD>
        <TD> <xsl:value-of select="@RCPN"/> </TD>
        <TD> <xsl:value-of select="@RCED"/> </TD>
        <TD> <xsl:value-of select="@RBC"/> </TD>
        <TD> <xsl:value-of select="@RBC_L"/> </TD>
        <TD> <xsl:value-of select="@RBC_H"/> </TD>
        <TD> <xsl:value-of select="@RBC_F"/> </TD>
        <TD> <xsl:value-of select="@RBC_O"/> </TD>
        <TD> <xsl:value-of select="@MCV"/> </TD>
        <TD> <xsl:value-of select="@MCV_L"/> </TD>
        <TD> <xsl:value-of select="@MCV_H"/> </TD>
        <TD> <xsl:value-of select="@MCV_F"/> </TD>
        <TD> <xsl:value-of select="@MCV_O"/> </TD>
        <TD> <xsl:value-of select="@HCT"/> </TD>
        <TD> <xsl:value-of select="@HCT_L"/> </TD>
        <TD> <xsl:value-of select="@HCT_H"/> </TD>
        <TD> <xsl:value-of select="@HCT_F"/> </TD>
        <TD> <xsl:value-of select="@HCT_O"/> </TD>
        <TD> <xsl:value-of select="@MCH"/> </TD>
        <TD> <xsl:value-of select="@MCH_L"/> </TD>
        <TD> <xsl:value-of select="@MCH_H"/> </TD>
        <TD> <xsl:value-of select="@MCH_F"/> </TD>
        <TD> <xsl:value-of select="@MCH_O"/> </TD>
        <TD> <xsl:value-of select="@MCHC"/> </TD>
        <TD> <xsl:value-of select="@MCHC_L"/> </TD>
        <TD> <xsl:value-of select="@MCHC_H"/> </TD>
        <TD> <xsl:value-of select="@MCHC_F"/> </TD>
        <TD> <xsl:value-of select="@MCHC_O"/> </TD>
        <TD> <xsl:value-of select="@RDWR"/> </TD>
        <TD> <xsl:value-of select="@RDWR_L"/> </TD>
        <TD> <xsl:value-of select="@RDWR_H"/> </TD>
        <TD> <xsl:value-of select="@RDWR_F"/> </TD>
        <TD> <xsl:value-of select="@RDWR_O"/> </TD>
        <TD> <xsl:value-of select="@RDWA"/> </TD>
        <TD> <xsl:value-of select="@RDWA_L"/> </TD>
        <TD> <xsl:value-of select="@RDWA_H"/> </TD>
        <TD> <xsl:value-of select="@RDWA_F"/> </TD>
        <TD> <xsl:value-of select="@RDWA_O"/> </TD>
        <TD> <xsl:value-of select="@PLT"/> </TD>
        <TD> <xsl:value-of select="@PLT_L"/> </TD>
        <TD> <xsl:value-of select="@PLT_H"/> </TD>
        <TD> <xsl:value-of select="@PLT_F"/> </TD>
        <TD> <xsl:value-of select="@PLT_O"/> </TD>
        <TD> <xsl:value-of select="@MPV"/> </TD>
        <TD> <xsl:value-of select="@MPV_L"/> </TD>
        <TD> <xsl:value-of select="@MPV_H"/> </TD>
        <TD> <xsl:value-of select="@MPV_F"/> </TD>
        <TD> <xsl:value-of select="@MPV_O"/> </TD>
        <TD> <xsl:value-of select="@PCT"/> </TD>
        <TD> <xsl:value-of select="@PCT_L"/> </TD>
        <TD> <xsl:value-of select="@PCT_H"/> </TD>
        <TD> <xsl:value-of select="@PCT_F"/> </TD>
        <TD> <xsl:value-of select="@PCT_O"/> </TD>
        <TD> <xsl:value-of select="@PDW"/> </TD>
        <TD> <xsl:value-of select="@PDW_L"/> </TD>
        <TD> <xsl:value-of select="@PDW_H"/> </TD>
        <TD> <xsl:value-of select="@PDW_F"/> </TD>
        <TD> <xsl:value-of select="@PDW_O"/> </TD>
        <TD> <xsl:value-of select="@LPCR"/> </TD>
        <TD> <xsl:value-of select="@LPCR_L"/> </TD>
        <TD> <xsl:value-of select="@LPCR_H"/> </TD>
        <TD> <xsl:value-of select="@LPCR_F"/> </TD>
        <TD> <xsl:value-of select="@LPCR_O"/> </TD>
        <TD> <xsl:value-of select="@HGB"/> </TD>
        <TD> <xsl:value-of select="@HGB_L"/> </TD>
        <TD> <xsl:value-of select="@HGB_H"/> </TD>
        <TD> <xsl:value-of select="@HGB_F"/> </TD>
        <TD> <xsl:value-of select="@HGB_O"/> </TD>
        <TD> <xsl:value-of select="@WBC"/> </TD>
        <TD> <xsl:value-of select="@WBC_L"/> </TD>
        <TD> <xsl:value-of select="@WBC_H"/> </TD>
        <TD> <xsl:value-of select="@WBC_F"/> </TD>
        <TD> <xsl:value-of select="@WBC_O"/> </TD>
        <TD> <xsl:value-of select="@LA"/> </TD>
        <TD> <xsl:value-of select="@LA_L"/> </TD>
        <TD> <xsl:value-of select="@LA_H"/> </TD>
        <TD> <xsl:value-of select="@LA_F"/> </TD>
        <TD> <xsl:value-of select="@LA_O"/> </TD>
        <TD> <xsl:value-of select="@MA"/> </TD>
        <TD> <xsl:value-of select="@MA_L"/> </TD>
        <TD> <xsl:value-of select="@MA_H"/> </TD>
        <TD> <xsl:value-of select="@MA_F"/> </TD>
        <TD> <xsl:value-of select="@MA_O"/> </TD>
        <TD> <xsl:value-of select="@GA"/> </TD>
        <TD> <xsl:value-of select="@GA_L"/> </TD>
        <TD> <xsl:value-of select="@GA_H"/> </TD>
        <TD> <xsl:value-of select="@GA_F"/> </TD>
        <TD> <xsl:value-of select="@GA_O"/> </TD>
        <TD> <xsl:value-of select="@LR"/> </TD>
        <TD> <xsl:value-of select="@LR_L"/> </TD>
        <TD> <xsl:value-of select="@LR_H"/> </TD>
        <TD> <xsl:value-of select="@LR_F"/> </TD>
        <TD> <xsl:value-of select="@LR_O"/> </TD>
        <TD> <xsl:value-of select="@MR"/> </TD>
        <TD> <xsl:value-of select="@MR_L"/> </TD>
        <TD> <xsl:value-of select="@MR_H"/> </TD>
        <TD> <xsl:value-of select="@MR_F"/> </TD>
        <TD> <xsl:value-of select="@MR_O"/> </TD>
        <TD> <xsl:value-of select="@GR"/> </TD>
        <TD> <xsl:value-of select="@GR_L"/> </TD>
        <TD> <xsl:value-of select="@GR_H"/> </TD>
        <TD> <xsl:value-of select="@GR_F"/> </TD>
        <TD> <xsl:value-of select="@GR_O"/> </TD>
    </TR>
</xsl:template>

</xsl:stylesheet>


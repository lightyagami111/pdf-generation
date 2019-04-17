<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
    <xsl:template match="rootPaymentRequest">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>

                <fo:simple-page-master master-name="first-page"
                                       page-height="29.7cm"
                                       page-width="21cm"
                                       margin-top="2.3cm"
                                       margin-bottom="2cm"
                                       margin-left="2cm"
                                       margin-right="2cm">
                    <fo:region-body margin-top="2cm" margin-bottom="1.1cm"/>
                    <fo:region-before region-name="xsl-region-before-first" extent="1cm"/>
                    <fo:region-after region-name="xsl-region-after" extent="1cm"/>
                </fo:simple-page-master>

                <fo:simple-page-master master-name="all-pages"
                                       page-height="29.7cm"
                                       page-width="21cm"
                                       margin-top="2.3cm"
                                       margin-bottom="2cm"
                                       margin-left="2cm"
                                       margin-right="2cm">
                    <fo:region-body margin-top="2cm" margin-bottom="1.1cm"/>
                    <fo:region-before region-name="xsl-region-before" extent="1cm"/>
                    <fo:region-after region-name="xsl-region-after" extent="1cm"/>
                </fo:simple-page-master>


                <fo:page-sequence-master master-name="my-sequence">
                    <fo:single-page-master-reference master-reference="first-page"/>
                    <fo:repeatable-page-master-reference master-reference="all-pages"/>
                </fo:page-sequence-master>

            </fo:layout-master-set>


            <fo:page-sequence master-reference="my-sequence">
                <fo:static-content flow-name="xsl-region-before-first">
                    <fo:block>
                        <fo:external-graphic src="https://shop-volkswagen-car-net.com/img/mail/car-net-logo.png" height="12mm" width="18mm" content-height="scale-to-fit" scaling="non-uniform"/>
                    </fo:block>
                    <fo:block text-align="end" margin-top="-23mm">
                        <fo:external-graphic src="https://shop-volkswagen-car-net.com/img/mail/vw-logo.png" height="18mm" width="28mm" content-height="scale-to-fit" scaling="non-uniform"/>
                        <fo:block margin-left="-17mm" margin-top="-4mm">
                            <fo:external-graphic src="https://shop-volkswagen-car-net.com/img/mail/vw-logo-text.png" height="8mm" width="23mm" content-height="scale-to-fit" scaling="non-uniform"/>
                        </fo:block>
                    </fo:block>
                </fo:static-content>

                <fo:static-content flow-name="xsl-region-before">
                    <fo:block>
                        <fo:external-graphic src="https://shop-volkswagen-car-net.com/img/mail/car-net-logo.png" height="12mm" width="18mm" content-height="scale-to-fit" scaling="non-uniform"/>
                    </fo:block>
                    <fo:block text-align="end" margin-top="-23mm">
                        <fo:external-graphic src="https://shop-volkswagen-car-net.com/img/mail/vw-logo.png" height="18mm" width="28mm" content-height="scale-to-fit" scaling="non-uniform"/>
                        <fo:block margin-left="-17mm" margin-top="-4mm">
                            <fo:external-graphic src="https://shop-volkswagen-car-net.com/img/mail/vw-logo-text.png" height="8mm" width="23mm" content-height="scale-to-fit" scaling="non-uniform"/>
                        </fo:block>
                    </fo:block>

                    <fo:block text-align="end">
                        Seite:<fo:page-number/>/
                        <fo:page-number-citation ref-id="TheVeryLastPage"/>
                    </fo:block>
                </fo:static-content>

                <fo:static-content flow-name="xsl-region-after">
                    <fo:block font-size="6pt" color="#B4B8BA" >Die Volkswagen AG ist im
                        Handelsregister des Amtsgerichts Braunschweig unter der Nr. HRB 100484 eingetragen. <br/>
                        Die Umsatzsteueridentifikationsnummer der Volkswagen AG ist DE115235681
                    </fo:block>
                    <fo:block font-size="6pt">
                        <fo:table table-layout="fixed" width="100%" border-collapse="separate">
                            <!--<fo:table-column column-width="3cm"/>-->
                            <!--<fo:table-column column-width="6cm"/>-->
                            <!--<fo:table-column column-width="6cm"/>-->

                            <fo:table-body width="100%">
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block color="#B4B8BA"  >
                                            Volkswagen AG <br/> Postanschrift: <br/> Berliner Ring 2, 38440 Wolfsburg <br/> Tel.: +49-5361-9-0 <br/> Fax: +49-5361-9-28282
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block color="#B4B8BA" >
                                            Volkswagen AG <br/> Commerzbank <br/> IBAN DE09269410530682000511 <br/> BIC
                                            COBADEFFXXX <br/> Verwendungszweck: Ihre Bestellnummer
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block color="#B4B8BA" >
                                            Die Volkswagen AG ist eine Aktiengesellschaft deutschen Rechts mit Hauptsitz
                                            in Wolfsburg. Vorsitzen der des Aufsichtsraters: Hans Dieter Potsch
                                            Vorsitzen der des Vorsands: Matthias Muller Vorsand: Herbert Diess,
                                            Francisco J.Garcia Sanz Jochem Heizmann, Horst Neumann, Andreas Renschier,
                                            Rupert Stadier, Frank Witter
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>

                            </fo:table-body>
                        </fo:table>
                    </fo:block>
                </fo:static-content>


                <fo:flow flow-name="xsl-region-body">
                    <fo:block font-size="16pt" color="#899093">
                        Rechunung
                    </fo:block>
                    <fo:block space-before="15mm" font-size="10pt">
                        <xsl:apply-templates select="mapCustomerInformation"/>
                    </fo:block>
                    <fo:block font-size="10pt">
                        <xsl:apply-templates select="mapPaymentRequest"/>
                    </fo:block>
                    <fo:block page-break-before="always">
                        <xsl:apply-templates select="invoiceData"/>
                    </fo:block>
                    <fo:block id="TheVeryLastPage"></fo:block>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>


    <xsl:template match="mapCustomerInformation">
        <fo:table table-layout="fixed" width="100%" border-collapse="separate">
            <fo:table-body width="100%">
                <fo:table-row>
                    <fo:table-cell>
                        <fo:block>
                            <xsl:value-of select="salutation"/> &#160;
                            <xsl:value-of select="firstName"/> &#160;
                            <xsl:value-of select="lastName"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                        <fo:block text-align="end">
                            Rechnungsdatum
                            <xsl:value-of select="../invoiceData/invoiceDate"/>
                        </fo:block>
                    </fo:table-cell>
                </fo:table-row>
                <fo:table-row>
                    <fo:table-cell>
                        <fo:block>
                            <xsl:value-of select="addr1"/> &#160;
                            <xsl:value-of select="houseNumber"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                        <fo:block text-align="end">
                            Rechnungsnummer:
                            <xsl:value-of select="../invoiceData/invoiceNumber"/>
                        </fo:block>
                    </fo:table-cell>
                </fo:table-row>
                <fo:table-row>
                    <fo:table-cell>
                        <fo:block>
                            <xsl:value-of select="postcode"/> &#160;
                            <xsl:value-of select="city"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                        <fo:block text-align="end">
                            bestellsnummer:
                            <xsl:value-of select="../orderIdentifier"/>
                        </fo:block>
                    </fo:table-cell>
                </fo:table-row>
                <fo:table-row>
                    <fo:table-cell>
                        <fo:block>
                            <xsl:value-of select="countryCode"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                        <fo:block text-align="end">
                            Bestellsdatum:
                            <xsl:value-of select="../orderDate"/>
                        </fo:block>
                    </fo:table-cell>
                </fo:table-row>
                <fo:table-row>
                    <fo:table-cell>
                        <fo:block>

                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                        <fo:block text-align="end">
                            <xsl:value-of select="email"/>
                        </fo:block>
                    </fo:table-cell>
                </fo:table-row>
                <fo:table-row>
                    <fo:table-cell>
                        <fo:block>

                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                        <fo:block text-align="end">
                            Seite:<fo:page-number/>/
                            <fo:page-number-citation ref-id="TheVeryLastPage"/>
                        </fo:block>
                    </fo:table-cell>
                </fo:table-row>
            </fo:table-body>
        </fo:table>
    </xsl:template>


    <xsl:attribute-set name="borderbottom">
        <xsl:attribute name="border-bottom">solid 0.2mm #D4D7D8</xsl:attribute>
    </xsl:attribute-set>
    <xsl:template match="mapPaymentRequest">

        <fo:block space-before="15mm">

            <fo:table  border-collapse="separate" border-separation="3mm">

                <fo:table-column column-width="100%"/>
                <fo:table-header >
                    <fo:table-cell>
                        <fo:block font-size="16pt" font-weight="bold">
                            <xsl:value-of select="salesItemName"/>
                        </fo:block>
                        <fo:block>
                            Artikel-Nr.
                            <fo:inline>
                                <xsl:value-of select="salesItemNumber"/>
                            </fo:inline>
                        </fo:block>
                    </fo:table-cell>
                </fo:table-header>
                <fo:table-body >
                    <fo:table-row>

                        <fo:table-cell>
                            <fo:table table-layout="fixed" width="100%"   xsl:use-attribute-sets="borderbottom">
                                <!--<fo:table-column column-width="3cm"/>-->
                                <!--<fo:table-column column-width="6cm"/>-->
                                <!--<fo:table-column column-width="6cm"/>-->
                                <!--<fo:table-column column-width="3cm"/>-->

                                <fo:table-header border-color="black" border-style="solid"
                                                 border-width="0.2mm" font-size="8pt"   xsl:use-attribute-sets="borderbottom">
                                    <fo:table-row  font-size="8pt"   xsl:use-attribute-sets="borderbottom">
                                        <fo:table-cell>
                                            <fo:block font-weight="bold" xsl:use-attribute-sets="borderbottom">
                                                Position
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block font-weight="bold" xsl:use-attribute-sets="borderbottom">
                                                FIN
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block font-weight="bold" xsl:use-attribute-sets="borderbottom">
                                                Laufzeit
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block font-weight="bold" text-align="right" margin-right="2cm" xsl:use-attribute-sets="borderbottom">
                                                Preis
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                </fo:table-header>

                                <fo:table-body>
                                    <xsl:apply-templates select="salesItems"/>
                                </fo:table-body>
                            </fo:table>
                        </fo:table-cell>
                    </fo:table-row>
                </fo:table-body>
            </fo:table>
        </fo:block>
    </xsl:template>


    <xsl:template match="salesItems">
        <fo:table-row>
            <fo:table-cell>
                <fo:block>
                    <xsl:value-of select="positionNumber"/>
                </fo:block>
            </fo:table-cell>

            <fo:table-cell>
                <fo:block>
                    <xsl:value-of select="additionalItemData/vin"/>
                </fo:block>
            </fo:table-cell>
            <fo:table-cell>
                <fo:block>
                    <xsl:value-of select="articleLicense/articleRunDuration"/>
                </fo:block>
            </fo:table-cell>
            <fo:table-cell>
                <fo:block text-align="right" margin-right="2cm">
                    <xsl:value-of select="articleLicense/salesItemGrossAmount"/>&#160;<xsl:value-of
                        select="../../currency"/>
                </fo:block>
            </fo:table-cell>
        </fo:table-row>
    </xsl:template>


    <xsl:template match="invoiceData">
        <fo:block text-align="end" padding="20pt 20pt 0pt 0pt">
            <fo:table table-layout="fixed" border-collapse="separate" space-after="7mm">
                <fo:table-column column-width="14cm"/>
                <fo:table-column column-width="3cm"/>
                <fo:table-body>
                    <fo:table-row>
                        <fo:table-cell>
                            <fo:block text-align="end">
                                Nettobetrag
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block text-align="end">
                                <xsl:value-of select="invoiceNetAmount" />&#160;<xsl:value-of select="../currency"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell >
                            <fo:block text-align="end" color="#B4B8BA">
                                19%MwSt
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block text-align="end" color="#B4B8BA">
                                <xsl:value-of select="invoiceVat" />
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell >
                            <fo:block text-align="end">

                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                            <fo:block  text-align="end" color="#B4B8BA">
                                _________________________________
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row >
                        <fo:table-cell>
                            <fo:block text-align="end" padding="10pt 0pt 0pt 0pt">
                                Rechnungsbetrag
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block text-align="end" padding="10pt 0pt 0pt 0pt">
                                <xsl:value-of select="invoiceGrossAmount" />&#160;<xsl:value-of select="../currency"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                </fo:table-body>
            </fo:table>
        </fo:block>
        <fo:block space-after="7mm">
            Leistungsdatum entspricht Rechnungsdatum
        </fo:block>
        <fo:block space-after="5mm">
            Zahlungsweise: <fo:inline font-weight="bold">Vorkasse</fo:inline>
        </fo:block>
        <fo:block>
            Bitte uberweisen Sie den Rechnungsbetrag auf das folgende Konto: Volkswagen AG, Commerzbank Wolfsburg IBAN DE09269410530682000511, BIC COBADEFF269, Verwendungszweck:<xsl:value-of select="invoiceNumber" />
        </fo:block>
    </xsl:template>
</xsl:stylesheet>
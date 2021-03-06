﻿<%@ Page Language="VB" MaintainScrollPositionOnPostback="true" AutoEventWireup="false" CodeFile="wfmColRecOriginal.aspx.vb" Inherits="VirtualLabIS.VLEE.VirtualLabIS_Experimentos_LABORATORIOS_H_SIMULATION_MC_Analysis_McColumnaRec_wfmColRec"%>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Assembly="ASPNetFlash" Namespace="ASPNetFlash" TagPrefix="ASPNetFlash" %>
<%@ Register Assembly="netchartdir" Namespace="ChartDirector" TagPrefix="chart" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>MC-ANALYSIS RECTANGULAR COLUMN</title>
    <link href="../../../../../Varios/Archivos/Styles/stlServicios.css" rel="stylesheet" type="text/css" />
    <script language="javascript" src="../../../../../Varios/Archivos/Scripts/scActualizacionControles.js" type="text/javascript"></script>
    <script language="javascript" src="../../../../../Varios/Archivos/Scripts/Validacion.js" type="text/javascript"></script>
   
</head>
<body style="color: #000000">
    <form id="frmMain" runat="server">
    <div>
        <div style="text-align: center">
            <div style="text-align: center">
                <div style="text-align: center">
                    <div style="text-align: center">
                        <div style="text-align: center" class="Funcionalidad-cuerpo">
                            <table style="width: 60%; height: 100%">                                
                                <tr>
                                    <td align="center" valign="middle" style="width: 80%">
                                        &nbsp;<table style="width: 100%; height: 95%" class="Tabla-Principales">
                                            <tr>
                                                <td align="center" class="Ocultar-texto" valign="middle">
                                                   <a name="#linkInicio">linkInicio</a></td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="Funcionalidad-titulo" style="height: 12pt" valign="middle">
                                                    <asp:Image ID="imgRutaTitulo" runat="server" /></td>
                                            </tr>
                                            <tr>
                                                <td align="center" valign="middle" class="Funcionalidad-titulo">
                                                    <asp:Label ID="lblTituloExp" runat="server" CssClass="Funcionalidad-titulo"></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="Funcionalidad-titulo" valign="middle">
                                                    <asp:Label ID="lblTítuloGeneral" runat="server" CssClass="Funcionalidad-titulo"></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="Funcionalidad-titulo"
                                                    valign="middle">
                                                        <table style="width: 90%; height: 90%" class="TablaDatos-Graficas">
                                                            <tr>
                                                                <td rowspan="3" style="border-left-color: activeborder; border-bottom-color: activeborder;
                                                                    width: 50%; border-top-color: activeborder; text-align: center; border-right-color: activeborder">
                                                                                <table style="width: 90%; height: 90%; border-top-width: 1px; border-top-color: activecaption;">
                                                                                    <tr>
                                                                                        <td colspan="2" style="height: 17px">
                                                                                            <asp:Label ID="lblTituloSeccionProper" runat="server" CssClass="Funcionalidad-subtitulo"></asp:Label></td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td>
                                                                                            <asp:TextBox ID="txtbase" runat="server" Width="52px" CssClass="Funcionalidad-textbox-habilitado" Font-Bold="False" Font-Italic="False" Font-Underline="False" AutoCompleteType="Disabled"></asp:TextBox></td>
                                                                                        <td style="width: 102%; height: 26px;" class="Funcionalidad-datos-entrada">
                                                                                            <strong>
                                                                                                <asp:Label ID="lblbase" runat="server" CssClass="Funcionalidad-datos-entrada"
                                                                                                    Font-Bold="False" Width="178px"></asp:Label></strong></td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td>
                                                                                            <asp:TextBox ID="txtaltura" runat="server" Width="52px" CssClass="Funcionalidad-textbox-habilitado"></asp:TextBox></td>
                                                                                        <td class="Funcionalidad-datos-entrada" style="width: 102%; height: 26px">
                                                                                            <asp:Label ID="lblaltura" runat="server" Width="180px" CssClass="Funcionalidad-datos-entrada" Font-Bold="False"></asp:Label></td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td style="width: 81px; height: 24px">
                                                                                            <asp:TextBox ID="txtcoverTopBottom" runat="server" Width="52px" CssClass="Funcionalidad-textbox-habilitado" AutoCompleteType="Disabled"></asp:TextBox></td>
                                                                                        <td class="Funcionalidad-datos-entrada" style="width: 102%">
                                                                                            <strong>
                                                                                                <asp:Label ID="lblcover1" runat="server" Font-Bold="False" CssClass="Funcionalidad-datos-entrada"></asp:Label></strong></td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td style="width: 81px; height: 24px">
                                                                                            <asp:TextBox ID="txtCoverLateral" runat="server" Width="52px" CssClass="Funcionalidad-textbox-habilitado"></asp:TextBox></td>
                                                                                        <td class="Funcionalidad-datos-entrada" style="width: 102%">
                                                                                            <asp:Label ID="lblcover2" runat="server" Width="106px" CssClass="Funcionalidad-datos-entrada" Font-Bold="False"></asp:Label></td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td style="width: 81px; height: 26px">
                                                                                            <asp:TextBox ID="txtDiamTopBottom" runat="server" CssClass="Funcionalidad-textbox-habilitado"
                                                                                                Width="52px" AutoCompleteType="Disabled"></asp:TextBox></td>
                                                                                        <td class="Funcionalidad-datos-entrada" style="width: 102%; height: 26px;">
                                                                                            <strong>
                                                                                                <asp:Label ID="lblLongBarDiameter1" runat="server" Font-Bold="False" CssClass="Funcionalidad-datos-entrada"></asp:Label></strong></td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td style="width: 81px; height: 24px">
                                                                                            <asp:TextBox ID="txtNumberTopBottom" runat="server" CssClass="Funcionalidad-textbox-habilitado"
                                                                                                Width="52px" AutoCompleteType="Disabled"></asp:TextBox></td>
                                                                                        <td class="Funcionalidad-datos-entrada" style="width: 102%">
                                                                                            <asp:Label ID="lblNumberLongBars1" runat="server" CssClass="Funcionalidad-datos-entrada"
                                                                                                Font-Bold="False"></asp:Label></td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td style="width: 81px; height: 26px">
                                                                                            <asp:TextBox ID="txtDiamLateral" runat="server" Width="52px" CssClass="Funcionalidad-textbox-habilitado"></asp:TextBox></td>
                                                                                        <td class="Funcionalidad-datos-entrada" style="width: 102%; height: 26px">
                                                                                            <asp:Label ID="lblLongBarDiameter2" runat="server" CssClass="Funcionalidad-datos-entrada" Font-Bold="False" Width="208px"></asp:Label></td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td style="width: 81px; height: 24px">
                                                                                            <asp:TextBox ID="txtNumberLateral" runat="server" Width="52px" CssClass="Funcionalidad-textbox-habilitado"></asp:TextBox></td>
                                                                                        <td class="Funcionalidad-datos-entrada" style="width: 102%">
                                                                                            <asp:Label ID="lblNumberLongBars2" runat="server" CssClass="Funcionalidad-datos-entrada" Font-Bold="False"></asp:Label></td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td style="width: 81px; height: 26px">
                                                                                            <asp:TextBox ID="txtNumLegsX" runat="server" Width="52px" CssClass="Funcionalidad-textbox-habilitado"></asp:TextBox></td>
                                                                                        <td class="Funcionalidad-datos-entrada" style="width: 102%; height: 26px">
                                                                                            <asp:Label ID="lblLongBarDiameter3" runat="server" CssClass="Funcionalidad-datos-entrada" Font-Bold="False" Width="208px"></asp:Label></td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td style="width: 81px; height: 40px">
                                                                                            <asp:TextBox ID="txtNumberLegsY" runat="server" Width="52px" CssClass="Funcionalidad-textbox-habilitado"></asp:TextBox></td>
                                                                                        <td class="Funcionalidad-datos-entrada" style="width: 102%; height: 40px;">
                                                                                            <asp:Label ID="lblNumberLongBars3" runat="server" CssClass="Funcionalidad-datos-entrada" Font-Bold="False"></asp:Label></td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td style="width: 81px; height: 24px">
                                                                                            <asp:TextBox ID="txtDiamEstr" runat="server" CssClass="Funcionalidad-textbox-habilitado"
                                                                                                Width="52px" AutoCompleteType="Disabled"></asp:TextBox></td>
                                                                                        <td class="Funcionalidad-datos-entrada" style="width: 102%">
                                                                                            <strong>
                                                                                                <asp:Label ID="lblestribosX" runat="server" Font-Bold="False" CssClass="Funcionalidad-datos-entrada"></asp:Label></strong></td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td style="width: 81px; height: 26px">
                                                                                            <asp:TextBox ID="txtSpacingEstr" runat="server" AutoCompleteType="Cellular" CssClass="Funcionalidad-textbox-habilitado"
                                                                                                Width="52px"></asp:TextBox></td>
                                                                                        <td class="Funcionalidad-datos-entrada" style="width: 102%; height: 26px">
                                                                                            <asp:Label ID="lblestribosY" runat="server" CssClass="Funcionalidad-datos-entrada"
                                                                                                Font-Bold="False"></asp:Label></td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td style="width: 81px; height: 26px">
                                                                                            <asp:TextBox ID="txtShearSpan" runat="server" AutoCompleteType="Cellular" CssClass="Funcionalidad-textbox-habilitado"
                                                                                                Width="52px"></asp:TextBox></td>
                                                                                        <td class="Funcionalidad-datos-entrada" style="width: 102%; height: 26px">
                                                                                            <asp:Label ID="lblShearSpan" runat="server" CssClass="Funcionalidad-datos-entrada" Font-Bold="False"></asp:Label></td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td style="width: 81px; height: 40px">
                                                                                            <asp:TextBox ID="txtAxialLoad" runat="server" CssClass="Funcionalidad-textbox-habilitado"
                                                                                                Width="52px"></asp:TextBox></td>
                                                                                        <td class="Funcionalidad-datos-entrada" style="width: 102%; height: 40px;">
                                                                                            <asp:Label ID="lblAxialLoad" runat="server" CssClass="Funcionalidad-datos-entrada" Font-Bold="False"></asp:Label></td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td style="width: 81px; height: 24px">
                                                                                            <asp:TextBox ID="txtAngle" runat="server" CssClass="Funcionalidad-textbox-habilitado"
                                                                                                Width="52px"></asp:TextBox></td>
                                                                                        <td class="Funcionalidad-datos-entrada" style="width: 102%">
                                                                                            <strong>
                                                                                                <asp:Label ID="lblAngle" runat="server" CssClass="Funcionalidad-datos-entrada"
                                                                                                    Font-Bold="False"></asp:Label></strong></td>
                                                                                    </tr>
                                                                                    <tr style="font-weight: bold">
                                                                                        <td colspan="2" style="height: 17px">
                                                                                            <asp:Label ID="lblTituloMaterialProper" runat="server" CssClass="Funcionalidad-subtitulo"></asp:Label></td>
                                                                                    </tr>
                                                                                    <tr style="color: #222222">
                                                                                        <td style="width: 81px; height: 26px">
                                                                                            <asp:TextBox ID="txtConcrComprStrength" runat="server" CssClass="Funcionalidad-textbox-habilitado"
                                                                                                Style="position: static" Width="52px" AutoCompleteType="Disabled"></asp:TextBox></td>
                                                                                        <td class="Funcionalidad-datos-entrada" style="width: 102%; height: 26px;">
                                                                                            <strong>
                                                                                                <asp:Label ID="lblConcrComprStrength" runat="server" Font-Bold="False" CssClass="Funcionalidad-datos-entrada" Width="180px"></asp:Label></strong></td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td style="width: 81px; height: 24px">
                                                                                            <asp:TextBox ID="txtfyLong" runat="server" CssClass="Funcionalidad-textbox-habilitado"
                                                                                                Style="position: static" Width="52px" AutoCompleteType="Disabled"></asp:TextBox></td>
                                                                                        <td class="Funcionalidad-datos-entrada" style="width: 102%">
                                                                                            <strong>
                                                                                                <asp:Label ID="lblLongRYS" runat="server" Font-Bold="False" CssClass="Funcionalidad-datos-entrada" Width="179px"></asp:Label></strong></td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td style="width: 81px; height: 38px">
                                                                                            <asp:TextBox ID="txtfyTrans" runat="server" CssClass="Funcionalidad-textbox-habilitado"
                                                                                                Style="position: static" Width="52px" AutoCompleteType="Disabled"></asp:TextBox></td>
                                                                                        <td class="Funcionalidad-datos-entrada" style="width: 102%; height: 38px;">
                                                                                            <strong>
                                                                                                <asp:Label ID="lblTransRYS" runat="server" Font-Bold="False" CssClass="Funcionalidad-datos-entrada" Width="176px"></asp:Label></strong></td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td style="width: 81px; height: 26px">
                                                                                            <asp:TextBox ID="txtratioSteel" runat="server" CssClass="Funcionalidad-textbox-habilitado"
                                                                                                Style="position: static" Width="52px" AutoCompleteType="Disabled"></asp:TextBox></td>
                                                                                        <td class="Funcionalidad-datos-entrada" style="width: 102%; height: 26px;">
                                                                                            <strong>
                                                                                                <asp:Label ID="lblindEnd" runat="server" Font-Bold="False" CssClass="Funcionalidad-datos-entrada" Width="184px"></asp:Label></strong></td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td style="width: 81px; height: 26px">
                                                                                            <asp:DropDownList ID="ddmode" runat="server" CssClass="Funcionalidad-etiqueta-dato"
                                                                                                Width="56px">
                                                                                                <asp:ListItem Selected="True" Value="uniaxial">uniaxial</asp:ListItem>
                                                                                                <asp:ListItem Value="biaxial">biaxial</asp:ListItem>
                                                                                            </asp:DropDownList></td>
                                                                                        <td class="Funcionalidad-datos-entrada" style="width: 102%; height: 26px">
                                                                                            <asp:Label ID="lblDmode" runat="server" CssClass="Funcionalidad-datos-entrada" Font-Bold="False"></asp:Label></td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td style="height: 30px">
                                                                                        </td>
                                                                                        <td class="Funcionalidad-datos-entrada" style="height: 30px">
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td colspan="2">
                                                                        <table style="width: 90%">
                                                                            <tr>
                                                                                <td style="width: 100%; height: 100%;">
                                                                                            <asp:Button ID="btnCargarEjemplo" runat="server" CssClass="Boton" Style="position: static" Width="184px" /></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td style="width: 100%; height: 100%;">
                                                                                            <asp:Button ID="btnGraficar" runat="server" CssClass="Boton" Style="position: static" Width="144px" /></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td style="width: 100%; height: 100%;">
                                                                                            </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td style="width: 100%; height: 100%;">
                                                                                            </td>
                                                                            </tr>
                                                                        </table>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td>
                                                                                        </td>
                                                                                        <td class="Funcionalidad-datos-entrada">
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                    <div style="text-align: center">
                                                                    </div>
                                                                    <div style="text-align: right">
                                                                        <div style="text-align: right">
                                                                            <div style="text-align: center">
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div style="text-align: center">
                                                                        &nbsp;</div>
                                                                </td>
                                                                <td style="width: 50%; text-align: center">
                                                                    <table style="width: 100%; height: 100%">
                                                                        <tr>
                                                                            <td style="height: 253px">
                                                                                <asp:Image ID="Image1" runat="server" ImageUrl="~/VirtualLabIS/Experimentos/LABORATORIOS/imagenes/MCColumna Retangular.jpg" />&nbsp;</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="height: 3px">
                                                                    <asp:Label ID="lblTituloEsquemaColumna" runat="server"></asp:Label></td>
                                                                        </tr>
                                                                    </table>
                                                                    <div style="text-align: center">
                                                                        <table style="width: 90%">
                                                                            <tr>
                                                                                <td style="width: 100%; height: 100%;" align="center">
                                                                                    <asp:Image ID="imgModeloConcreto" runat="server" /></td>
                                                                            </tr>
                                                                        </table>
                                                                    </div>
                                                                    <div style="text-align: center">
                                                                        <table style="width: 90%">
                                                                            <tr>
                                                                                <td style="width: 100%; height: 100%;">
                                                                                    <asp:Label ID="lblconc" runat="server" Width="277px"></asp:Label></td>
                                                                            </tr>
                                                                        </table>
                                                                    </div>
                                                                    <div style="text-align: center">
                                                                        <table style="width: 90%">
                                                                            <tr>
                                                                                <td style="width: 100%; height: 100%;">
                                                                                    <asp:Image ID="imgModeloAcero" runat="server" /></td>
                                                                            </tr>
                                                                        </table>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="width: 100%; text-align: center; height: 100%;">
                                                                    <asp:Label ID="lblSteel" runat="server" Width="277px"></asp:Label></td>
                                                            </tr>
                                                            <tr>
                                                                <td style="width: 50%; text-align: center; height: 5px;">
                                                                                    <table style="width: 80%">
                                                                                        <tr>
                                                                                            <td>
                                                                                                <asp:Label ID="lblMensajeRegistrarse" runat="server" CssClass="Funcionalidad-Mensajes-Links"
                                                                                                    Width="100%"></asp:Label></td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td align="center" style="text-align: center;">
                                                                                                <asp:HyperLink ID="hplRegistrarse" runat="server" CssClass="Funcionalidad-Mensajes-Links"
                                                                                                    Visible="False">[hplRegistrarse]</asp:HyperLink></td>
                                                                                        </tr>
                                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td colspan="2" rowspan="1" style="border-left-color: activeborder; border-bottom-color: activeborder;
                                                                    border-top-color: activeborder; height: 15px; text-align: center; border-right-color: activeborder">
                                                                </td>
                                                            </tr>
                                                        </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="Ocultar-texto" valign="middle">
                                                   <a name="#linkExperimento" style="width: 80%; height: 150px">linkExperimento</a></td>
                                            </tr>
                                            <tr>
                                                <td align="center" style="width: 891px; height: 100%" valign="middle">
                                                    <div style="text-align: center">
                                                        <div style="text-align: center">
                                                            <div style="text-align: center">
                                                                <table style="width: 100%; height: 100%">
                                                                    <tr>
                                                                        <td colspan="2" rowspan="1" style="height: 48px">
                                                                            <asp:Label ID="lblResults" runat="server" CssClass="Funcionalidad-titulo" Font-Size="X-Large"></asp:Label></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td colspan="2" rowspan="1">
                                                                            <table class="TablaDatos-Graficas" style="width: 80%; height: 90%">
                                                                                <tr>
                                                                                    <td class="PanelHeader" style="width: 50%">
                                                                                        <asp:Label ID="lblAnalysis" runat="server" CssClass="Funcionalidad-titulo"></asp:Label></td>
                                                                                    <td class="PanelHeader" style="width: 50%">
                                                                                        <asp:Label ID="lblTituloMCR" runat="server" CssClass="Funcionalidad-titulo"></asp:Label></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td rowspan="2" style="width: 50%">
                                                                                        <table style="width: 90%; height: 90%">
                                                                                            <tr>
                                                                                                <td colspan="3" style="height: 18px">
                                                                                                    <asp:Label ID="lblTituloAnalysisIndex" runat="server" CssClass="Funcionalidad-subtitulo"></asp:Label></td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="Funcionalidad-indicadores" style="width: 60%; height: 22px">
                                                                                                    <asp:Label ID="lblLongRR" runat="server" CssClass="Funcionalidad-datos-entrada" Font-Bold="False"
                                                                                                        Font-Italic="False" Font-Underline="False"></asp:Label></td>
                                                                                                <td style="font-size: 8pt; width: 95px; height: 22px">
                                                                                                    <span><span style="font-size: 10pt"><span style="color: #000000; font-family: Symbol">
                                                                                                        <img id="imgCargaAxial" src="../../../../../Varios/Archivos/Imagenes/Columna/Ecuaciones/ID_CuantiaAceroLongitudinalAMC.png" /></span></span></span></td>
                                                                                                <td style="font-size: 8pt; width: 20%; height: 22px">
                                                                                                    <asp:TextBox ID="txtLongRR" runat="server" CssClass="Funcionalidad-textbox-noHabilitado"
                                                                                                        Width="42px"></asp:TextBox></td>
                                                                                            </tr>
                                                                                            <tr style="font-size: 8pt">
                                                                                                <td class="Funcionalidad-indicadores" style="width: 60%">
                                                                                                    <asp:Label ID="lblTransRR" runat="server" CssClass="Funcionalidad-datos-entrada"></asp:Label></td>
                                                                                                <td style="font-size: 8pt; width: 95px">
                                                                                                    <img id="imgAceroTrans" src="../../../../../Varios/Archivos/Imagenes/Columna/Ecuaciones/ID_CuantiaAceroTransversalAMC.png" /></td>
                                                                                                <td style="font-size: 8pt; width: 100px">
                                                                                                    <asp:TextBox ID="txtTransRR" runat="server" CssClass="Funcionalidad-textbox-noHabilitado"
                                                                                                        Style="position: static" Width="42px"></asp:TextBox></td>
                                                                                            </tr>
                                                                                            <tr style="font-size: 8pt">
                                                                                                <td class="Funcionalidad-indicadores" style="width: 60%">
                                                                                                    <asp:Label ID="lblAxialLoadRatio" runat="server" CssClass="Funcionalidad-datos-entrada"></asp:Label></td>
                                                                                                <td style="font-size: 8pt; width: 95px">
                                                                                                    <img id="imgPorcCargaAxial" src="../../../../../Varios/Archivos/Imagenes/Columna/Ecuaciones/ID_RazonCargaAxialAMC.png" /></td>
                                                                                                <td style="font-size: 8pt; width: 100px">
                                                                                                    <asp:TextBox ID="txtAxialLoadRatio" runat="server" CssClass="Funcionalidad-textbox-noHabilitado"
                                                                                                        Style="position: static" Width="42px"></asp:TextBox></td>
                                                                                            </tr>
                                                                                            <tr style="font-size: 8pt; color: #222222">
                                                                                                <td style="width: 60%">
                                                                                                </td>
                                                                                                <td style="width: 95px">
                                                                                                </td>
                                                                                                <td style="width: 100px">
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr style="font-size: 8pt; color: #222222">
                                                                                                <td colspan="3" style="height: 15px">
                                                                                                    <asp:Label ID="lblAnalysisResult" runat="server" CssClass="Funcionalidad-subtitulo"></asp:Label></td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="Funcionalidad-indicadores" style="width: 60%">
                                                                                                    <asp:Label ID="lblMomentoPrimeraFluencia" runat="server" CssClass="Funcionalidad-datos-entrada"></asp:Label></td>
                                                                                                <td style="font-size: 8pt; width: 95px">
                                                                                                    <span style="font-size: 7pt">
                                                                                                        <asp:Image ID="imgMomentoPrimeraFluencia" runat="server" ImageUrl="~/VirtualLabIS/Varios/Archivos/Imagenes/Columna/Ecuaciones/IA_PrimeraMomentoFluencia.png" /></span></td>
                                                                                                <td style="font-size: 8pt; width: 100px">
                                                                                                    <asp:TextBox ID="txtMomentoPrimeraFluencia" runat="server" CssClass="Funcionalidad-textbox-noHabilitado"
                                                                                                        Style="position: static" Width="42px"></asp:TextBox></td>
                                                                                            </tr>
                                                                                            <tr style="font-size: 8pt">
                                                                                                <td class="Funcionalidad-indicadores" style="width: 60%">
                                                                                                    <asp:Label ID="lblPrimeraCurvaturaFluencia" runat="server" CssClass="Funcionalidad-datos-entrada"></asp:Label></td>
                                                                                                <td style="font-size: 8pt; width: 95px">
                                                                                                    <asp:Image ID="imgPrimeraCurvaturaFluencia" runat="server" ImageUrl="~/VirtualLabIS/Varios/Archivos/Imagenes/Columna/Ecuaciones/IA_PrimeraCurvaturaFluenciaAMC.png" /></td>
                                                                                                <td style="font-size: 8pt; width: 100px">
                                                                                                    <asp:TextBox ID="tbPrimeraCurvaturaFluencia" runat="server" CssClass="Funcionalidad-textbox-noHabilitado"
                                                                                                        Style="position: static" Width="42px"></asp:TextBox></td>
                                                                                            </tr>
                                                                                            <tr style="font-size: 8pt">
                                                                                                <td class="Funcionalidad-indicadores" style="width: 60%">
                                                                                                    <asp:Label ID="lblMomentoNominal" runat="server" CssClass="Funcionalidad-datos-entrada"></asp:Label></td>
                                                                                                <td style="font-size: 8pt; width: 95px">
                                                                                                    <span style="font-size: 7pt">
                                                                                                        <asp:Image ID="imgMomentoNominal" runat="server" ImageUrl="~/VirtualLabIS/Varios/Archivos/Imagenes/Columna/Ecuaciones/IA_MomentoNominalAMC.png" /></span></td>
                                                                                                <td style="font-weight: bold; font-size: 8pt; width: 100px; color: #000000">
                                                                                                    <asp:TextBox ID="tbMomentoNominal" runat="server" CssClass="Funcionalidad-textbox-noHabilitado"
                                                                                                        Style="position: static" Width="42px"></asp:TextBox></td>
                                                                                            </tr>
                                                                                            <tr style="font-size: 8pt">
                                                                                                <td class="Funcionalidad-indicadores" style="width: 60%">
                                                                                                    <asp:Label ID="lblCurvaturaFluencia" runat="server" CssClass="Funcionalidad-datos-entrada"></asp:Label></td>
                                                                                                <td style="font-size: 8pt; width: 95px">
                                                                                                    <asp:Image ID="Image4" runat="server" ImageUrl="~/VirtualLabIS/Varios/Archivos/Imagenes/Columna/Ecuaciones/IA_CurvaturaFluenciaAMC.png" /></td>
                                                                                                <td style="font-weight: bold; font-size: 8pt; width: 100px; color: #000000">
                                                                                                    <asp:TextBox ID="tbCurvaturaFluencia" runat="server" CssClass="Funcionalidad-textbox-noHabilitado"
                                                                                                        Style="position: static" Width="42px"></asp:TextBox></td>
                                                                                            </tr>
                                                                                            <tr style="font-size: 8pt">
                                                                                                <td class="Funcionalidad-indicadores" style="width: 60%">
                                                                                                    <asp:Label ID="lblIncerciaAgrietada" runat="server" CssClass="Funcionalidad-datos-entrada"></asp:Label></td>
                                                                                                <td style="font-size: 8pt; width: 95px">
                                                                                                    <asp:Image ID="imgAgrietada" runat="server" ImageUrl="~/VirtualLabIS/Varios/Archivos/Imagenes/Columna/Ecuaciones/IA_InerciaAgrietadaAMC.png" /></td>
                                                                                                <td style="font-weight: bold; font-size: 8pt; width: 100px; color: #000000">
                                                                                                    <asp:TextBox ID="tbIncerciaAgrietada" runat="server" CssClass="Funcionalidad-textbox-noHabilitado"
                                                                                                        Style="position: static" Width="42px"></asp:TextBox></td>
                                                                                            </tr>
                                                                                            <tr style="font-size: 8pt">
                                                                                                <td class="Funcionalidad-indicadores" style="width: 60%">
                                                                                                    <asp:Label ID="lbldefConc" runat="server" CssClass="Funcionalidad-datos-entrada"
                                                                                                        Width="109px"></asp:Label></td>
                                                                                                <td style="font-size: 8pt; width: 95px">
                                                                                                </td>
                                                                                                <td style="font-weight: bold; font-size: 8pt; width: 100px; color: #000000">
                                                                                                    <asp:TextBox ID="txtDefMomNom" runat="server" CssClass="Funcionalidad-textbox-noHabilitado"
                                                                                                        Style="position: static" Width="42px"></asp:TextBox></td>
                                                                                            </tr>
                                                                                            <tr style="font-size: 8pt">
                                                                                                <td class="Funcionalidad-indicadores">
                                                                                                    <asp:Label ID="lblDamConMom" runat="server" CssClass="Funcionalidad-datos-entrada"></asp:Label></td>
                                                                                                <td style="font-size: 8pt; width: 95px">
                                                                                                </td>
                                                                                                <td style="font-size: 8pt; width: 100px">
                                                                                                    <asp:TextBox ID="txtDamageControl" runat="server" CssClass="Funcionalidad-textbox-noHabilitado"
                                                                                                        Style="position: static" Width="42px"></asp:TextBox></td>
                                                                                            </tr>
                                                                                            <tr style="font-size: 8pt">
                                                                                                <td class="Funcionalidad-indicadores" style="height: 22px">
                                                                                                    <asp:Label ID="lblDamageControl" runat="server" CssClass="Funcionalidad-datos-entrada"></asp:Label></td>
                                                                                                <td style="font-size: 8pt; width: 95px; height: 22px">
                                                                                                </td>
                                                                                                <td style="font-size: 8pt; width: 100px; height: 22px">
                                                                                                    <asp:TextBox ID="txtDamCon" runat="server" CssClass="Funcionalidad-textbox-noHabilitado"
                                                                                                        Style="position: static" Width="42px"></asp:TextBox></td>
                                                                                            </tr>
                                                                                            <tr style="font-size: 8pt">
                                                                                                <td class="Funcionalidad-indicadores" style="height: 22px">
                                                                                                    <asp:Label ID="lblSlopeRatio" runat="server" CssClass="Funcionalidad-datos-entrada"></asp:Label></td>
                                                                                                <td style="font-size: 8pt; width: 95px; height: 22px">
                                                                                                </td>
                                                                                                <td style="font-size: 8pt; width: 100px; height: 22px">
                                                                                                    <asp:TextBox ID="txtSlopeRatio" runat="server" CssClass="Funcionalidad-textbox-noHabilitado"
                                                                                                        Style="position: static" Width="42px"></asp:TextBox></td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </td>
                                                                                    <td style="width: 50%">
                                                                                        <chart:WebChartViewer ID="WebChartViewer1" runat="server" BorderColor="White" SelectionBorderColor="Transparent"
                                                                                            Style="position: static" /></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td style="width: 50%">
                                                                                        </td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div style="text-align: center">
                                                    </div>
                                                </td>
                                            </tr>                                                                                     
                                            <tr>
                                                <td align="center" style="width: 891px; height: 81%" valign="middle">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" style="width: 100%; height: 100%;" valign="middle">
                                                    <asp:TextBox ID="txtresult" runat="server" Height="600px" TextMode="MultiLine" Width="800px" CssClass="texto-interno-pequeno"></asp:TextBox></td>
                                            </tr>
                                            <tr>
                                                <td align="center" style="width: 891px; height: 112px;" valign="middle">
                                                    <span style="color: #000000">Copyright © 2006 - 2008 VirtualLab UTPL. All rights reserved.
                                                    </span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" style="width: 891px" valign="middle">
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" style="width: 80%" valign="middle">
                                        <asp:HiddenField ID="hiddNumTest" runat="server" />
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    
    </div>
    </form>
</body>
</html>

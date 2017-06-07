<%@ Page Title="" Language="C#" MasterPageFile="~/MainContent.Master" AutoEventWireup="true" CodeBehind="BlogDetay.aspx.cs" Inherits="BlogProjectSon.WebFormsUI.BlogDetay" %>

<%@ Register Src="~/UserControls/BlogDetay.ascx" TagPrefix="uc1" TagName="BlogDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:BlogDetay runat="server" id="BlogDetay1" />
</asp:Content>

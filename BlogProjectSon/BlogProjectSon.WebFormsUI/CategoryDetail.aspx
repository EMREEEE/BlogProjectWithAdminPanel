<%@ Page Title="" Language="C#" MasterPageFile="~/MainContent.Master" AutoEventWireup="true" CodeBehind="CategoryDetail.aspx.cs" Inherits="BlogProjectSon.WebFormsUI.CategoryDetail" %>

<%@ Register Src="~/UserControls/CategoryDetail.ascx" TagPrefix="uc1" TagName="CategoryDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:CategoryDetail runat="server" id="CategoryDetail1" />
</asp:Content>

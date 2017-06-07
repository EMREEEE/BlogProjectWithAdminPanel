<%@ Page Title="" Language="C#" MasterPageFile="~/MainContent.Master" AutoEventWireup="true" CodeBehind="UserActivation.aspx.cs" Inherits="BlogProjectSon.WebFormsUI.UserActivation" %>

<%@ Register Src="~/UserControls/UserActivation.ascx" TagPrefix="uc1" TagName="UserActivation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:UserActivation runat="server" id="UserActivation1" />
</asp:Content>

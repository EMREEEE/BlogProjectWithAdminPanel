<%@ Page Title="" Language="C#" MasterPageFile="~/MainContent.Master" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="BlogProjectSon.WebFormsUI.UserLogin" %>

<%@ Register Src="~/UserControls/UserLogin.ascx" TagPrefix="uc1" TagName="UserLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:UserLogin runat="server" id="UserLogin1" />
</asp:Content>

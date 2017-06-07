<%@ Page Title="" Language="C#" MasterPageFile="~/MainContent.Master" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs" Inherits="BlogProjectSon.WebFormsUI.UserRegistration" %>

<%@ Register Src="~/UserControls/UserRegistration.ascx" TagPrefix="uc1" TagName="UserRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:UserRegistration runat="server" ID="UserRegistration1" />
</asp:Content>

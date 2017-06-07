<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/AdminMaster.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BlogProjectSon.WebFormsUI.AdminPanel.Default" %>

<%@ Register Src="~/AdminPanel/UserControls/DashBoard.ascx" TagPrefix="uc1" TagName="DashBoard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:DashBoard runat="server" id="DashBoard1" />
</asp:Content>

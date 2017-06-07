<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AdminEkle.aspx.cs" Inherits="BlogProjectSon.WebFormsUI.AdminPanel.AdminEkle" %>

<%@ Register Src="~/AdminPanel/UserControls/AdminEkle.ascx" TagPrefix="uc1" TagName="AdminEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:AdminEkle runat="server" id="AdminEkle1" />
</asp:Content>

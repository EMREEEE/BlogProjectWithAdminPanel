<%@ Page Title="" Language="C#" MasterPageFile="~/MainContent.Master" AutoEventWireup="true" CodeBehind="UserPanel.aspx.cs" Inherits="BlogProjectSon.WebFormsUI.UserPanel" %>

<%@ Register Src="~/UserControls/UserPanel.ascx" TagPrefix="uc1" TagName="UserPanel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="divMessage" runat="server"></div>

    <div id="divPanel" runat="server">
    


    </div>
</asp:Content>

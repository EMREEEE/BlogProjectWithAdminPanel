<%@ Page Title="" Language="C#" MasterPageFile="~/MainContent.Master" AutoEventWireup="true" CodeBehind="YeniBlogYazisi.aspx.cs" Inherits="BlogProjectSon.WebFormsUI.YeniBlogYazisi" %>

<%@ Register Src="~/UserControls/YeniBlogYazisi.ascx" TagPrefix="uc1" TagName="YeniBlogYazisi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 
  <%--  <script src="js/summernote.js"></script>
    <link href="css/summernote.css" rel="stylesheet" />--%>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.3/summernote.js"></script>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.3/summernote.css" rel="stylesheet">

    <script>    
        $(function () {

        
            $(".summernote").summernote({

                "height": 200,
                
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:YeniBlogYazisi runat="server" id="YeniBlogYazisi1" />

</asp:Content>

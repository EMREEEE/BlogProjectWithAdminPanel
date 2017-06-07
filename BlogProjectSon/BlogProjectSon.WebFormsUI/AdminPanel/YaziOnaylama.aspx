<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/AdminMaster.Master" AutoEventWireup="true" CodeBehind="YaziOnaylama.aspx.cs" Inherits="BlogProjectSon.WebFormsUI.AdminPanel.YaziOnaylama" %>

<%@ Register Src="~/AdminPanel/UserControls/YaziOnaylama.ascx" TagPrefix="uc1" TagName="YaziOnaylama" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

      <script src="MyScripts/jquery.dataTables.min.js"></script>
    <link href="MyStyles/jquery.dataTables.min.css" rel="stylesheet" />

   
    <script>
        $(function () {
            
            $('#tblAdminUser').DataTable({
                "paging": true,
                "lengthChange": true,
                "searching": true,
                "ordering": true,
                "info": true,
                "autoWidth": true,
                "language": {
                    "sDecimal": ",",
                    "sEmptyTable": "Tabloda herhangi bir veri mevcut değil",
                    "sInfo": "_TOTAL_ kayıttan _START_ - _END_ arasındaki kayıtlar gösteriliyor",
                    "sInfoEmpty": "Kayıt yok",
                    "sInfoFiltered": "(_MAX_ kayıt içerisinden bulunan)",
                    "sInfoPostFix": "",
                    "sInfoThousands": ".",
                    "sLengthMenu": "Sayfada _MENU_ kayıt göster",
                    "sLoadingRecords": "Yükleniyor...",
                    "sProcessing": "İşleniyor...",
                    "sSearch": "Ara:",
                    "sZeroRecords": "Eşleşen kayıt bulunamadı",
                    "oPaginate": {
                        "sFirst": "İlk",
                        "sLast": "Son",
                        "sNext": "Sonraki",
                        "sPrevious": "Önceki"
                    },
                    "oAria": {
                        "sSortAscending": ": artan sütun sıralamasını aktifleştir",
                        "sSortDescending": ": azalan sütun sıralamasını aktifleştir"
                    }
                }
                
            });
           
         

            $("a[aria-label='Article']").click(function () {

                var hdfArticleId = $("#ContentPlaceHolder1_YaziOnaylama1_hdfArticleId");

                var articleId = $(this).attr("articleId");
                hdfArticleId.val(articleId);


            });

            $("a[aria-label='Delete']").click(function () {

                var hdfArticleId = $("#ContentPlaceHolder1_YaziOnaylama1_hfBlogId");

                var useriddelete = $(this).attr("useriddelete");
                hdfArticleId.val(useriddelete);


            });

            $("a[aria-label='Approve']").click(function () {

                var hfBlogIdApprove = $("#ContentPlaceHolder1_YaziOnaylama1_hfBlogIdApprove");

                var useridapprove = $(this).attr("useridapprove");
                hfBlogIdApprove.val(useridapprove);


            });
            $("#btnCancel").click(function () {

                $("#divArticle").hide();


            });
        });
       
</script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:YaziOnaylama runat="server" id="YaziOnaylama1" />
</asp:Content>

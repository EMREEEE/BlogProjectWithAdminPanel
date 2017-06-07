<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AdminDuzenle.aspx.cs" Inherits="BlogProjectSon.WebFormsUI.AdminPanel.AdminDuzenle" %>

<%@ Register Src="~/AdminPanel/UserControls/AdminDuzenle.ascx" TagPrefix="uc1" TagName="AdminDuzenle" %>

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
            $("a[aria-label='Delete']").click(function () {

                var hfAdminUserId = $("#ContentPlaceHolder1_AdminDuzenle1_hfAdminUserId");

                var adminUserId = $(this).attr("adminuserid");
                hfAdminUserId.val(adminUserId);


            });

            $("#btnCancelUpdate").click(function () {

                $("#divUpdateAdmin").hide();


            });
        });
       
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:AdminDuzenle runat="server" id="AdminDuzenle1" />
</asp:Content>

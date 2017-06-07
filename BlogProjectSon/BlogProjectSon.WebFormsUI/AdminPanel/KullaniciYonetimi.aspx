<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/AdminMaster.Master" AutoEventWireup="true" CodeBehind="KullaniciYonetimi.aspx.cs" Inherits="BlogProjectSon.WebFormsUI.AdminPanel.KullaniciYonetimi" %>

<%@ Register Src="~/AdminPanel/UserControls/KullaniciYonetimi.ascx" TagPrefix="uc1" TagName="KullaniciYonetimi" %>

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

                var hfAdminUserId = $("#ContentPlaceHolder1_KullaniciYonetimi1_hfUserId");

                var adminUserId = $(this).attr("useridDelete");
                hfAdminUserId.val(adminUserId);


            });
            $("a[aria-label='Approve']").click(function () {

                var hfAdminUserId = $("#ContentPlaceHolder1_KullaniciYonetimi1_hfUserIdApprove");

                var adminUserId = $(this).attr("useridApprove");
                hfAdminUserId.val(adminUserId);


            });

          
 
        });
       
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:KullaniciYonetimi runat="server" id="KullaniciYonetimi1" />
</asp:Content>

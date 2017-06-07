<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AdminMenuYonetim.aspx.cs" Inherits="BlogProjectSon.WebFormsUI.AdminPanel.AdminMenuYonetim" %>

<%@ Register Src="~/AdminPanel/UserControls/AdminMenuYonetim.ascx" TagPrefix="uc1" TagName="AdminMenuYonetim" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="MyScripts/jquery.dataTables.min.js"></script>
    <link href="MyStyles/jquery.dataTables.min.css" rel="stylesheet" />

   
    <script>
        $(function () {
            
            $('#tblAdminMenu').DataTable({
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

                var hfAdminMenuId = $("#ContentPlaceHolder1_AdminMenuYonetim1_hfAdminMenuId");
            
                var adminMenuId = $(this).attr("adminmenuid");
                hfAdminMenuId.val(adminMenuId);
              

            });

            //$("a[aria-label='Update']").click(function () {

            //    var hfUpdateAdminMenuId = $("#ContentPlaceHolder1_AdminMenuYonetim1_hfUpdateAdminMenuId");

            //    var adminMenuId = $(this).attr("adminMenuId");
            //    hfUpdateAdminMenuId.val(adminMenuId);


            //});

            $("#ContentPlaceHolder1_AdminMenuYonetim1_chkSelectTopMenu").click(function () {

                //if($(this).prop("checked") == true)
                //    $("#divTopMenu").css("display","block");
                //else 
                //    $("#divTopMenu").css("display", "none");
                $("#divTopMenu").toggle();
            });

            $("#ContentPlaceHolder1_AdminMenuYonetim1_chkTopMenuUpdate").click(function () {
 
                $("#ContentPlaceHolder1_AdminMenuYonetim1_divTopMenuUpdate").toggle();
            });

            $("#btnCancelUpdate").click(function () {

                $("#divUpdateAdminMenu").hide();


            });
        });
       
</script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:AdminMenuYonetim runat="server" ID="AdminMenuYonetim1" />
</asp:Content>

<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AdminMenuYonetim.ascx.cs" Inherits="BlogProjectSon.WebFormsUI.AdminPanel.UserControls.AdminMenuYonetim" %>

<!-- Content Header (Page header) -->
<section class="content-header">

    <h1>Admin Menü Yönetimi</h1>
     

</section>
<!-- Main content -->

<section class="content">

    <div class="row">
        <div class="col-xs-12">
            <div class="box box-info">
                <div id="divMessage" runat="server"></div>
                <div class="box-body">
                    <a class="btn btn-primary" data-toggle="modal" data-target="#divNewAdminMenu"><i class="glyphicon glyphicon-plus" aria-hidden="true"></i> Yeni Menü Oluştur</a>
                    <hr />


                    <table id="tblAdminMenu" class="table table-striped table-hover">
                        <thead>
                            <tr>
                                <th>Menü Adı</th>
                                <th>Simge</th>
                                <th>Link</th>
                                <th>Üst Menü</th>
                                <th>Durum</th>
                                <th>Sil</th>
                                <th>Düzenle</th>
                            </tr>
                        </thead>

                        <tbody>
                            <asp:Repeater ID="rptAdminMenus" runat="server" OnItemDataBound="rptAdminMenus_ItemDataBound" OnItemCommand="rptAdminMenus_ItemCommand">
                                <ItemTemplate>
                                    <tr>
                                        <td><%#Eval("Name")%></td>
                                        <td><i class="<%#Eval("MenuIcon") %>"></i></td>
                                        <td><%#Eval("Link")%></td>
                                        <td>
                                            <asp:Literal ID="ltTopMenuName" Text="text" runat="server" />

                                        </td>
                                        <td>
                                            <asp:Literal ID="ltIsActive" Text="text" runat="server" />


                                        </td>
                                        <td>
                                            <a class="btn btn-danger" aria-label="Delete" data-toggle="modal" data-target="#divDelete" adminmenuid="<%#Eval("Id") %>">
                                                <i class="fa fa-trash-o" aria-hidden="true"></i>
                                            </a>
                                        </td>
                                        <td>
                                           
                                            <asp:LinkButton ID="lnkUpdate"  class="btn btn-info" CommandArgument='<%#Eval("Id") %>' CommandName="Update" runat="server" >
                                                <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                                            </asp:LinkButton>
                                        </td>
                                    </tr>

                                </ItemTemplate>
                            </asp:Repeater>



                        </tbody>
                        <tfoot>
                            <tr>
                                <th>Menü Adı</th>
                                <th>Simge</th>
                                <th>Link</th>
                                <th>Üst Menü</th>
                                <th>Durum</th>
                               <th>Sil</th>
                                <th>Düzenle</th>
                            </tr>
                        </tfoot>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>



<div style="padding-top: 100px;" id="divDelete" class="modal fade" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">UYARI !!!</h4>

            </div>
            <div class="modal-body">
                <h4 class="modal-title">Silmek istiyor musunuz?</h4>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Vazgeç</button>
                <asp:Button ID="btnDeleteAdminMenu" CssClass="btn btn-danger" Text="Sil" runat="server" OnClick="btnDeleteAdminMenu_Click" />
                <asp:HiddenField ID="hfAdminMenuId" runat="server" />
            </div>
        </div>
    </div>
</div>



<div style="padding-top: 100px;" id="divNewAdminMenu" class="modal fade" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">

            <div class="modal-body">
                <div class="col-md-12">


                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">Yeni Menü Ekleme</h3>
                        </div>



                        <div class="box-body">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Menü Adı</label>
                                <asp:TextBox ID="txtMenuName"  class="form-control" runat="server" placeholder="Menü Adı Giriniz.." />
                            </div>
                            <div class="form-group">
                                <label>Simge</label>
                                <asp:DropDownList ID="ddlMenuIcon" CssClass="form-control" runat="server">
                                </asp:DropDownList>
                            </div>
                            <div class="form-group">
                                <label>Lİnk</label>
                                 <asp:TextBox ID="txtLink"  class="form-control" runat="server" placeholder="Link Giriniz.." />
                             
                            </div>
                            <div class="form-group">
                                <label>Bu bir alt menüdür</label>
                                <input id="chkSelectTopMenu" runat="Server" type="checkbox" />
                            </div>

                            <div class="form-group" id="divTopMenu" style="display:none;">
                                <label>Üst Menü</label>
                                <asp:DropDownList ID="ddlTopMenu" CssClass="form-control" runat="server">
                                </asp:DropDownList>
                            </div>
                        </div>


                        <div class="box-footer">
                            <asp:Button ID="btnSave" text="Kaydet" CssClass="btn btn-primary" runat="server" OnClick="btnSave_Click" />
                             <button type="button" class="btn btn-danger" data-dismiss="modal">Vazgeç</button>
                        </div>


                    </div>
                </div>
                <div class="modal-footer">
                   
                </div>

            </div>
        </div>
    </div>
</div>

<div style="padding-top: 100px;" id="divUpdateAdminMenu" class="modal fade" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">

            <div class="modal-body">
                <asp:HiddenField ID="hfUpdateAdminMenuId" runat="server" />
                <div class="col-md-12">


                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">Admin Menü Düzenleme Formu</h3>
                        </div>



                        <div class="box-body">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Menü Adı</label>
                                <asp:TextBox ID="txtNameUpdate"  class="form-control" runat="server" placeholder="Menü Adı Giriniz.." />
                            </div>
                            <div class="form-group">
                                <label>Simge</label>
                                <asp:DropDownList ID="ddlMenuIconUpdate" CssClass="form-control" runat="server">
                                </asp:DropDownList>
                            </div>
                            <div class="form-group">
                                <label>Lİnk</label>
                                 <asp:TextBox ID="txtLinkUpdate"  class="form-control" runat="server" placeholder="Link Giriniz.." />
                             
                            </div>
                            <div class="form-group">
                                <label>Bu bir alt menüdür</label>
                                <input id="chkTopMenuUpdate" runat="Server" type="checkbox" />
                            </div>

                            <div class="form-group" id="divTopMenuUpdate" runat="server" style="display:none;">
                                <label>Üst Menü</label>
                                <asp:DropDownList ID="ddlTopMenuUpdate" CssClass="form-control" runat="server">
                                </asp:DropDownList>
                            </div>
                        </div>


                        <div class="box-footer">
                            <asp:Button ID="btnUpdate"  text="Güncelle" CssClass="btn btn-primary" runat="server" OnClick="btnUpdate_Click" />
                             <button id="btnCancelUpdate" type="button" class="btn btn-danger" data-dismiss="modal">Vazgeç</button>
                        </div>


                    </div>
                </div>
                <div class="modal-footer">
                   
                </div>

            </div>
        </div>
    </div>
</div>

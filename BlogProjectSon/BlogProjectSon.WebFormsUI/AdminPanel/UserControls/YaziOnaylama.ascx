<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="YaziOnaylama.ascx.cs" Inherits="BlogProjectSon.WebFormsUI.AdminPanel.UserControls.YaziOnaylama" %>
<section class="content-header">

    <h1>Makale & Yazi Onaylama</h1>



</section>

<section class="content">
    <div class="row">
        <div class="col-md-12">
            <!-- general form elements -->
            <div class="box box-info">

                <div class="box-body">

                    <div class="panel-body">
                        <%--  <section class="content-header">

                                        <h1>Admin Menü Yönetimi</h1>



                                        <h4 style="color: red">Şu an kayıtlı olan Yöneticiler</h4>

                                    </section>--%>


                        <section class="content">

                            <div class="row">
                                <div class="col-xs-12">
                                    <div class="box">
                                        <div id="divMessage" runat="server"></div>
                                        <div class="box-body">
                                            <hr />


                                            <table id="tblAdminUser" class="table table-striped table-hover">
                                                <thead>
                                                    <tr>
                                                        <th>Kullanıcı resmi</th>
                                                        <th>Ad Soyad</th>
                                                        <th>Kategori</th>
                                                        <th>Başlık</th>
                                                        <th>Durumu</th>
                                                        <th>Makale</th>
                                                        <th>Sil</th>
                                                        <th>Onayla</th>
                                                    </tr>
                                                </thead>

                                                <tbody>
                                                    <asp:Repeater ID="rptArticle" runat="server"   OnItemCommand="rptArticle_ItemCommand" OnItemDataBound="rptArticle_ItemDataBound">
                                                        <ItemTemplate>
                                                            <tr>
                                                                <td>
                                                                    <asp:Image ID="imgUserPhoto" class="img-circle" runat="server" Style="width: 50px; height: 40px;" />
                                                                </td>
                                                                <td><%#Eval("User.FullName")%></td>
                                                                <td><%#Eval("Category.CategoryName") %></></td>
                                                                <td><%#Eval("Title") %></></td>
                                                                <td>
                                                                    <asp:Literal ID="ltIsActiveUser" Text="text" runat="server" />


                                                                </td>
                                                                <td>

                                                                    <asp:LinkButton ID="lnkArticle" class="btn btn-default"   CommandArgument='<%#Eval("Id") %>' CommandName="Article" runat="server">
                                                                        <i class="fa fa-book" aria-hidden="true"></i> Oku
                                                                    </asp:LinkButton>

                                                                 
                                                                </td>
                                                                <td>
                                                                    <a class="btn btn-danger" aria-label="Delete" data-toggle="modal" data-target="#divDelete" useriddelete="<%#Eval("Id") %>">
                                                                        <i class="fa fa-trash-o" aria-hidden="true"></i>
                                                                    </a>
                                                                </td>

                                                                <td>

                                                                    <a class="btn btn-info" aria-label="Approve" data-toggle="modal" data-target="#divApprove" useridapprove="<%#Eval("Id") %>">
                                                                        <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                                                                    </a>

                                                                </td>
                                                            </tr>

                                                        </ItemTemplate>
                                                    </asp:Repeater>



                                                </tbody>
                                                <tfoot>
                                                    <tr>
                                                        <th>Kullanıcı resmi</th>
                                                        <th>Ad Soyad</th>
                                                        <th>Kategori</th>
                                                        <th>Başlık</th>
                                                        <th>Durumu</th>
                                                        <th>Makale</th>
                                                        <th>Sil</th>
                                                        <th>Onayla</th>
                                                    </tr>
                                                </tfoot>
                                            </table>

                                        </div>
                                        <div id="divMessageUser" runat="server"></div>
                                    </div>
                                </div>
                            </div>
                        </section>
                    </div>

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
                 <asp:LinkButton ID="lnkDeleteUser" class="btn btn-danger"  runat="server" OnClick="lnkDeleteUser_Click">Sil</asp:LinkButton>
                 <asp:HiddenField ID="hfBlogId" runat="server" />
             
            </div>
        </div>
    </div>
</div>

<div style="padding-top: 100px;" id="divApprove" class="modal fade" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">UYARI !!!</h4>

            </div>
            <div class="modal-body">
                <h4 class="modal-title">Onaylamak istiyor musunuz?</h4>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Vazgeç</button>
                 <asp:LinkButton ID="lnkApprove" class="btn btn-primary"  runat="server" OnClick="lnkApprove_Click">Onayla</asp:LinkButton>
                 <asp:HiddenField ID="hfBlogIdApprove" runat="server" />
             
            </div>
        </div>
    </div>
</div>

<div style="padding-top: 100px;" id="divArticle" class="modal fade" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">
                    <asp:Literal ID="ltTitle" runat="server" />
                </h4>

            </div>
            <div class="modal-body">
                <asp:Literal ID="ltContext" runat="server" />
            </div>
            <div class="modal-footer">
                <button id="btnCancel" type="button" class="btn btn-default" data-dismiss="modal">Kapat</button>
                <asp:HiddenField ID="hdfArticleId" runat="server" />

            </div>
        </div>
    </div>
</div>

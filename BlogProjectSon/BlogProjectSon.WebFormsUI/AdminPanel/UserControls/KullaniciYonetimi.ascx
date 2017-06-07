<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="KullaniciYonetimi.ascx.cs" Inherits="BlogProjectSon.WebFormsUI.AdminPanel.UserControls.KullaniciYonetimi" %>
<section class="content-header">

    <h1>Kullanıcı Düzenle</h1>

 

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
                                                                    <th>Resim</th>
                                                                    <th>Ad Soyad</th>
                                                                    <th>Kullanıcı Adı</th>
                                                                    <th>E-Posta</th>    
                                                                     <th>Durum</th>
                                                                    
                                                                    <th>Sil</th>
                                                                    <th>Onayla</th>
                                                                </tr>
                                                            </thead>

                                                            <tbody>
                                                                <asp:Repeater ID="rptUser" runat="server"  OnItemDataBound="rptUser_ItemDataBound"   >
                                                                    <ItemTemplate>
                                                                        <tr>
                                                                            <td>
                                                                                <asp:Image ID="imgUserPhoto" class="img-circle" runat="server" style="width:50px; height:40px;"/>
                                                                            </td>
                                                                            <td><%#Eval("FullName")%></td>
                                                                            <td><%#Eval("UserName") %></></td>
                                                                            <td><%#Eval("Email") %></></td> 
                                                                            <td>
                                                                                <asp:Literal ID="ltIsActiveUser" Text="text" runat="server" />


                                                                            </td>
                                                                        
                                                                            <td>
                                                                                <a class="btn btn-danger" aria-label="Delete" data-toggle="modal" data-target="#divDelete" useridDelete="<%#Eval("Id") %>">
                                                                                    <i class="fa fa-trash-o" aria-hidden="true"></i>
                                                                                </a>
                                                                            </td>

                                                                            <td>

                                                                                  <a class="btn btn-info" aria-label="Approve" data-toggle="modal" data-target="#divApprove" useridApprove="<%#Eval("Id") %>">
                                                                                    <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                                                                                </a>
                                                                                 
                                                                            </td>
                                                                        </tr>

                                                                    </ItemTemplate>
                                                                </asp:Repeater>



                                                            </tbody>
                                                            <tfoot>
                                                                <tr>
                                                                    <th>Resim</th>
                                                                    <th>Ad Soyad</th>
                                                                    <th>Kullanıcı Adı</th>
                                                                    <th>E-Posta</th> 
                                                                     <th>Durum</th>
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
                 <asp:HiddenField ID="hfUserId" runat="server" />
             
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
                 <asp:HiddenField ID="hfUserIdApprove" runat="server" />
             
            </div>
        </div>
    </div>
</div>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AdminDuzenle.ascx.cs" Inherits="BlogProjectSon.WebFormsUI.AdminPanel.UserControls.AdminDuzenle" %>

<section class="content-header">

    <h1>Yönetici Düzenle</h1>

 

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
                                                                    <th>Meslek</th>
                                                                     <th>Durum</th>
                                                                     <th>Kayıt Tarihi</th>
                                                                    <th>Sil</th>
                                                                    <th>Düzenle</th>
                                                                </tr>
                                                            </thead>

                                                            <tbody>
                                                                <asp:Repeater ID="rptAdminUser" runat="server"  OnItemDataBound="rptAdminUser_ItemDataBound" OnItemCommand="rptAdminUser_ItemCommand" >
                                                                    <ItemTemplate>
                                                                        <tr>
                                                                            <td>
                                                                                <asp:Image ID="imgAdminPhoto" class="img-circle" runat="server" style="width:50px; height:40px;"/>
                                                                            </td>
                                                                            <td><%#Eval("FullName")%></td>
                                                                            <td><%#Eval("UserName") %></></td>
                                                                            <td><%#Eval("Email") %></></td>
                                                                            <td><%#Eval("Job")%></td>
                                                                            <td>
                                                                                <asp:Literal ID="ltIsActiveAdminUser" Text="text" runat="server" />


                                                                            </td>
                                                                         
                                                                           <td><%#Eval("MemberShipDate")%></td>
                                                                            <td>
                                                                                <a class="btn btn-danger" aria-label="Delete" data-toggle="modal" data-target="#divDelete" adminuserid="<%#Eval("Id") %>">
                                                                                    <i class="fa fa-trash-o" aria-hidden="true"></i>
                                                                                </a>
                                                                            </td>

                                                                            <td>

                                                                                <asp:LinkButton ID="lnkUpdate" class="btn btn-info" CommandArgument='<%#Eval("Id") %>' CommandName="Update" runat="server">
                                                <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                                                                                </asp:LinkButton>
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
                                                                    <th>Meslek</th>
                                                                     <th>Durum</th>
                                                                      <th>Sil</th>
                                                                    <th>Düzenle</th>
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
                 <asp:LinkButton ID="lnkDeleteAdminUser" class="btn btn-danger"  runat="server" OnClick="lnkDeleteAdminUser_Click">Sil</asp:LinkButton>
                 <asp:HiddenField ID="hfAdminUserId" runat="server" />
             
            </div>
        </div>
    </div>
</div>

<div style="padding-top: 0px;" id="divUpdateAdmin" class="modal fade" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">

            <div class="modal-body">
                <asp:HiddenField ID="hfUpdateAdminId" runat="server" />
                <div class="col-md-12">


                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">Yönetici Düzenleme Formu</h3>
                        </div>



                        <div class="box-body">
                             <div class="form-group">
                                 <table>
                                     <tr>
                                         <td><label>Kullanıcı Resmi</label></td>
                                        </tr>
                                     <tr>
                                         <td><asp:Image ID="imgAdminPhotoUpdate" class="img-circle" runat="server" style="width:50px; height:40px;"/></td>
                                         <td> <asp:FileUpload ID="fuPhotoUpdate" runat="server" /></td>
                                          
                                     </tr>
                                   
                                 </table>
                                
                                
                            </div>

                            <div class="form-group">
                                <label>Kullanıcı Adı Soyadı</label>
                                <asp:TextBox ID="txtAdminFullNameUpdate"  class="form-control" runat="server" placeholder="Ad Soyad Giriniz.." />
                            </div>
                       
                            <div class="form-group">
                                <label>Kullanıcı Adı</label>
                                 <asp:TextBox ID="txtAdminUsernameUpdate"  class="form-control" runat="server" placeholder="Kullanıcı Adı Giriniz.." />
                             
                            </div>
                             
                             <div class="form-group">
                                <label>Şifre</label>
                                 <asp:TextBox ID="txtAdminPasswordUpdate"  class="form-control" runat="server" placeholder="Şifre Giriniz.." />
                             
                            </div>
                             <div class="form-group">
                                <label>E-Posta</label>
                                 <asp:TextBox ID="txtAdminEmailUpdate"  class="form-control" runat="server" placeholder="Email Giriniz.." />
                             
                            </div>
                             <div class="form-group">
                                <label>Meslek</label>
                                 <asp:TextBox ID="txtAdminJobUpdate"  class="form-control" runat="server" placeholder="Meslek Giriniz.." />
                             
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
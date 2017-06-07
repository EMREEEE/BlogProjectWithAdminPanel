<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AdminEkle.ascx.cs" Inherits="BlogProjectSon.WebFormsUI.AdminPanel.UserControls.AdminEkle" %>

<section class="content-header">

    <h1>Yönetici Ekle</h1>

 

</section>


<section class="content">
    <div class="row">
        <div class="col-md-12">
            <!-- general form elements -->
            <div class="box box-info">

                <div class="box-body">
                   
                
                                <div class="panel-body">
                                    <%-- <section class="content-header">

                                        <h1>Yöneticiler</h1>


                                    </section>--%>
                                    <section class="content">
                                        <div class="row">
                                            <div class="col-md-8">
                                                <!-- general form elements -->
                                                <div class="box">
                                                    <%--  <div class="box-header with-border">
                                                        <h3 class="box-title">Yönetici Kaydetme Formu</h3>
                                                    </div>--%>

                                                    <div class="box-body">
                                                        <div class="form-group">
                                                            <label for="exampleInputFullName">Ad Soyad</label>
                                                            <input type="Text" class="form-control" id="txtFullName" required placeholder="Ad Soyad Giriniz.." runat="server">
                                                        </div>

                                                        <div class="form-group">
                                                            <label for="exampleInputUser">Kullanıcı Adı</label>
                                                            <input type="Text" class="form-control" id="txtUserName" required placeholder="Kullanıcı Adı Giriniz.." runat="server">
                                                        </div>

                                                        <div class="form-group">
                                                            <label for="exampleInputPassword">Şifre</label>
                                                            <input type="password" class="form-control" id="txtPassword" required placeholder="Şifre Giriniz.." runat="server">
                                                        </div>

                                                        <div class="form-group">
                                                            <label for="exampleInputEmail">Email</label>
                                                            <input type="text" class="form-control" id="txtEmail"   placeholder="Şifre Giriniz.." runat="server"  pattern="^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$"  required title="Lütfen Geçerli Email giriniz..">
                                                        </div>

                                                        <div class="form-group">
                                                            <label for="exampleInputJob">Meslek</label>
                                                            <input type="Text" class="form-control" id="txtJob" required placeholder="Mesleğinizi giriniz.." runat="server">
                                                        </div>


                                                        <div class="form-group">
                                                            <label for="exampleInputFile">Yönetici Resmi</label>
                                                            <asp:FileUpload ID="fuPhoto" runat="server" />

                                                        </div>

                                                    </div>
                                                    <!-- /.box-body -->

                                                    <div class="box-footer">
                                                        <asp:Button ID="btnSave" Text="Kaydet" CssClass="btn btn-primary" runat="server"  OnClick="btnSave_Click" />
                                                    </div>
                                                    <div id="divMessage" runat="server"></div>
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
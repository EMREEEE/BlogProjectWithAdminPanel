<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="YeniBlogYazisi.ascx.cs" Inherits="BlogProjectSon.WebFormsUI.UserControls.YeniBlogYazisi" %>
<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <section class="panel">
                <header class="panel-heading">


                    <h2 class="panel-title">Yeni Blog Yazisi Ekleme</h2>
                    <hr />
                </header>
                
                <div class="panel-body">
                    <div id="divMessage" runat="server"></div>
                    <div class="form-group">
                        <label class="col-md-3 control-label">Başlık</label>
                        <div class="col-md-6">
                            <div class="input-group input-group-icon">
                                <span class="input-group-addon">
                                    <span class="icon"><i class="fa fa-file-text"></i></span>
                                </span>
                                <input id="txtTitle" runat="server" class="form-control" placeholder="Blog Yazısı Başlığı..">
                            </div>
                        </div>
                    </div>
                       <div class="form-group">
                        <label class="col-md-3 control-label">Özet</label>
                        <div class="col-md-6">
                            <div class="input-group input-group-icon">
                                <textarea id="txtAbstract" maxlength="350" class="form-control" rows="3" placeholder="Özet..." style="width:300px" runat="server"></textarea>
                                <%--<span class="input-group-addon">
                                    <span class="icon"><i class="fa fa-file-text"></i></span>
                                </span>
                                <input id="txtAbstract" required maxlength="350" runat="server" class="form-control" placeholder="Özet.." >--%>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label" for="inputSuccess">Kategorisi</label>
                        <div class="col-md-6">

                            <asp:DropDownList ID="ddlCategory" class="form-control mb-md" runat="server">
                                <asp:ListItem Text="text1" />
                                <asp:ListItem Text="text2" />
                            </asp:DropDownList>

                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label">Resimler</label>
                        <div class="col-md-6">
                            <div class="fileupload fileupload-new" runat="server" data-provides="fileupload">
                                <div class="input-append">
                                <asp:FileUpload AllowMultiple="true" id="fuBlogPostImage" runat="server" />
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-md-3 control-label">İçerik</label>
                        <div class="col-md-6">
                            
                                <textarea id="txtContent" runat="server" class="form-control summernote" placeholder="Blog Yazısı Başlığı.."></textarea>
                          
                        </div>
                    </div>
                    <div>
                         <div class="col-md-3"></div>
                        <div class="col-md-6">
                            
                              <asp:Button ID="btnSave" Text="KAYDET" CssClass="btn btn-success"  runat="server" OnClick="btnSave_Click" />
                          
                        </div>
                    </div>
                    
                </div>
            </section>

        </div>
    </div>
</div>

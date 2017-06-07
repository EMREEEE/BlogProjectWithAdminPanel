<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserRegistration.ascx.cs" Inherits="BlogProjectSon.WebFormsUI.UserControls.UserRegistration" %>
<div class="row" >
    <div class="col-md-12" style="margin-left:250px">

        <div class="row featured-boxes login">
            <div class="col-sm-6">
									<div class="featured-box featured-box-secundary default info-content">
										<div class="box-content">
											<h4>Yeni Kullanıcı Kayıt Sayfası</h4>
									 <div id="divMessage" runat="server">  </div>
												<div class="row">
													<div class="form-group">
														<div class="col-md-12">
															<label>Ad Soyad</label>
															<input id="txtFullName" type="text"   class="form-control input-lg" runat="server" required>
														</div>
													</div>
												</div>
                                            <div class="row">
													<div class="form-group">
														<div class="col-md-12">
															<label>Kullanıcı Adı</label>
															<input id="txtUserName" type="text"   class="form-control input-lg" runat="server" required>
														</div>
													</div>
												</div>
                                            <div class="row">
													<div class="form-group">
														<div class="col-md-12">
															<label>Şifre</label>
															<input id="txtPassword" type="password"   class="form-control input-lg" runat="server" required>
														</div>
													</div>
												</div>
                                             <div class="row">
													<div class="form-group">
														<div class="col-md-12">
															<label>E-Posta</label>
															<input id="txtEmail" type="text"  class="form-control input-lg" runat="server" pattern="^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$"  required title="Lütfen Geçerli Email giriniz.." >
														</div>
													</div>
												</div>
												 <div class="row">
													<div class="form-group">
														<div class="col-md-12">
															<label>Fotograf</label>
                                                            <asp:FileUpload ID="fuUpload" runat="server" />
														</div>
													</div>
												</div>
												<div class="row">
													<div class="col-md-12">
													<asp:Button ID="btnKaydet" class="btn btn-success pull-right push-bottom" Text="Kaydet" runat="server"   OnClick="btnKaydet_Click" />
                                                       
                                                    </div>
												</div>
											 
										</div>
									</div>
								</div>
       
        </div>
        </div>
    </div>
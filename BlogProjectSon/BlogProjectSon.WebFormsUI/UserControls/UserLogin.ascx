<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserLogin.ascx.cs" Inherits="BlogProjectSon.WebFormsUI.UserControls.UserLogin" %>
<div class="row">
						<div class="col-md-12" style="margin-left:250px">

							<div class="row featured-boxes login">
								<div class="col-sm-6">
									<div class="featured-box featured-box-secundary default info-content">
										<div class="box-content">
											<h4>Kullanıcı Girişi</h4>
									     <div id="divMessage" runat="server"></div>
												<div class="row">
													<div class="form-group">
														<div class="col-md-12">
															<label>Kullanıcı adı yada Email adresi</label>
                                                            <asp:TextBox ID="txtUserOrEmail" class="form-control input-lg" runat="server" required="Email gir"/>  
														</div>
													</div>
												</div>
												<div class="row">
													<div class="form-group">
														<div class="col-md-12">
															<a class="pull-right" href="#">(Lost Password?)</a>
															<label>Şifre</label>
															<asp:TextBox TextMode="password" ID="txtPassword" class="form-control input-lg" runat="server"  required="Şifre gir"/>  
														</div>
													</div>
												</div>
												<div class="row">
												 
													<div class="col-md-12">
														 
                                                        <asp:Button ID="btnLogin" Text="Giriş"  class="btn btn-success pull-right push-bottom " runat="server"  OnClick="btnLogin_Click" />
													</div>
												</div>
										 
										</div>
									</div>
								</div>
							 
							</div>

						</div>
					</div>
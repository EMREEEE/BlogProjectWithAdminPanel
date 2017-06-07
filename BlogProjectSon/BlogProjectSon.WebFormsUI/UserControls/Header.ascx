<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Header.ascx.cs" Inherits="BlogProjectSon.WebFormsUI.UserControls.Header" %>
<%@ Register Src="~/UserControls/HeaderSearchBox.ascx" TagPrefix="uc1" TagName="HeaderSearchBox" %>




<div class="container">
					<div class="logo">
						<a href="index-2.html">
							<img alt="Porto" width="111" height="54" data-sticky-width="82" data-sticky-height="40" src="img/logo.png">
						</a>
					</div>
					<div class="search">
						 <uc1:HeaderSearchBox runat="server" ID="HeaderSearchBox" />
					</div>
					<button class="btn btn-responsive-nav btn-inverse" data-toggle="collapse" data-target=".nav-main-collapse">
						<i class="fa fa-bars"></i>
					</button>
				</div>
				<div class="navbar-collapse nav-main-collapse collapse">
					<div class="container">
						<ul class="social-icons">
							<li class="facebook"><a href="../../../www.facebook.com/index.html" target="_blank" title="Facebook">Facebook</a></li>
							<li class="twitter"><a href="../../../www.twitter.com/index.html" target="_blank" title="Twitter">Twitter</a></li>
							<li class="linkedin"><a href="../../../www.linkedin.com/index.html" target="_blank" title="Linkedin">Linkedin</a></li>
						</ul>
						<nav class="nav-main mega-menu">
							<ul class="nav nav-pills nav-main" id="mainMenu">
								<li >
									<a class="dropdown-toggle" href="/Default.aspx">
										AnaSayfa
										 
									</a>
									 
								</li>
								<li>
									<a href="#">Hakkımızda</a>
								</li>
                                <li>
									<a href="/UserRegistration.aspx">Kayıt</a>
								</li>
                                <li>
									<a href="/UserLogin.aspx">Giriş</a>
								</li>
                                <li>
									<a href="#">İletişim</a>
								</li>
								 
							</ul>
						</nav>
                       
					</div>
				</div>
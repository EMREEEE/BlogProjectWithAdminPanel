<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TopBar.ascx.cs" Inherits="BlogProjectSon.WebFormsUI.AdminPanel.UserControls.TopBar" %>
  <!-- Logo -->
                <a href="../AdminPanel/Default.aspx" class="logo">
                    <!-- mini logo for sidebar mini 50x50 pixels -->
                    <span class="logo-mini"><b>E.</b>A</span>
                    <!-- logo for regular state and mobile devices -->
                     
                    <span class="logo-lg"><b>AkturkSoft</b>
                        </span> 
 
                </a>
                <!-- Header Navbar: style can be found in header.less -->
                <nav class="navbar navbar-static-top">
                    <!-- Sidebar toggle button-->
                    <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                        <span class="sr-only">Toggle navigation</span>
                    </a>

                    <div class="navbar-custom-menu">
                        <ul class="nav navbar-nav">
                            <!-- Messages: style can be found in dropdown.less-->
                             
                            <!-- User Account: style can be found in dropdown.less -->
                            <li class="dropdown user user-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                     
                                     <asp:Image ID="imgAdminPhoto" class="user-image"  runat="server" />
                                    
                                      <span class="hidden-xs">
                                        <asp:Literal ID="ltAdminFullName" Text="text" runat="server" />

                                    </span>
                                </a>
                                <ul class="dropdown-menu">
                                    <!-- User image -->
                                    <li class="user-header">
                                        <asp:Image ID="imgAdminPhoto1" class="img-circle"  runat="server" />
                                        <p>
                                            <asp:Literal ID="ltAdminFullName1" Text="text" runat="server" />
                                             -
                                            <asp:Literal ID="ltAdminJob" Text="text" runat="server" />
                 
                                            <small>
                                                <asp:Literal ID="ltMemberDate" Text="text" runat="server" /> beri üye
                                            </small>
                                        </p>
                                    </li>
                                    <!-- Menu Body -->
                                    
                                    <!-- Menu Footer-->
                                    <li class="user-footer">
                                        
                                        <div class="pull-right">
                                            <asp:LinkButton ID="lnkSignOut" class="btn btn-default btn-flat" Text="Çıkış" runat="server" OnClick="lnkSignOut_Click" />

                                        </div>
                                    </li>
                                </ul>
                            </li>
                            <!-- Control Sidebar Toggle Button -->
                            <%--<li>
                                <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
                            </li>--%>
                        </ul>
                    </div>
                </nav>
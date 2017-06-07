<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LeftMenu.ascx.cs" Inherits="BlogProjectSon.WebFormsUI.AdminPanel.UserControls.LeftMenu" %>
<!-- sidebar: style can be found in sidebar.less -->
 <section class="sidebar">
    <ul class="sidebar-menu">
        <li class="header">ADMIN MENU</li>

        <asp:Repeater ID="rptAdminMenu" runat="server" OnItemDataBound="rptAdminMenu_ItemDataBound">
            <ItemTemplate>
                <li class="treeview">
                    <a href='<%#Eval("Link") %>'>
                        <i class="<%#Eval("MenuIcon") %>"></i><span><%#Eval("Name") %></span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <asp:Repeater ID="rptAdminSubMenu" runat="server">
                            <ItemTemplate>
                                <li><a href="<%#Eval("Link") %>"><i class="<%#Eval("MenuIcon") %>"></i><%#Eval("Name") %></a></li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </li>
            </ItemTemplate>
        </asp:Repeater>
    </ul>
</section>

<!-- /.sidebar -->

  
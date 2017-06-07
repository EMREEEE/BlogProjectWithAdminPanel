<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Categories.ascx.cs" Inherits="BlogProjectSon.WebFormsUI.UserControls.Categories" %>
<h4>KATEGORİLER</h4>
<%--<ul class="nav nav-list primary push-bottom">
    <li><a href="#">Design</a></li>
    <li><a href="#">Photos</a></li>
    <li><a href="#">Videos</a></li>
    <li><a href="#">Lifestyle</a></li>
    <li><a href="#">Technology</a></li>
</ul>--%>

<ul class="nav nav-list primary push-bottom">
    <%--1.YOL--%>

    <%--<asp:Repeater Id="rptCategories" runat="server" OnItemDataBound="rptCategories_ItemDataBound">    
        <ItemTemplate>
            <li>
                <a href="#">
                    <asp:Literal ID="ltCategoryName" runat="server" />
                </a>
            </li>
        </ItemTemplate>
    </asp:Repeater>--%>

    <%--2.YOL--%>

    <asp:Repeater Id="rptCategories" runat="server">    
        <ItemTemplate>
            <li>
                <a href="/CategoryDetail.aspx?Id=<%#Eval("Id") %>">
                   <%-- türü ne ise convert etmeslisin ama string ise gerek yok--%>
                   <%#Eval("CategoryName").ToString()%>
                </a>
            </li>
        </ItemTemplate>
    </asp:Repeater>



</ul>

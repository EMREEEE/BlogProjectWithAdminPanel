<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CategoryDetail.ascx.cs" Inherits="BlogProjectSon.WebFormsUI.UserControls.CategoryDetail" %>
<%@ Register Src="~/UserControls/Categories.ascx" TagPrefix="uc1" TagName="Categories" %>
<%@ Register Src="~/UserControls/tabs.ascx" TagPrefix="uc1" TagName="tabs" %>


<div class="row">
        <div class="col-md-9">
            <div class="blog-posts">
                <div id="divMessage" runat="server"></div>
                <asp:Repeater ID="rptBlogEntries" runat="server" OnItemDataBound="rptBlogEntries_ItemDataBound">
                    <ItemTemplate>
                        <article class="post post-medium">
                            <div class="row">

                                <div class="col-md-5">
                                    <div class="post-image">
                                        <div class="owl-carousel" data-plugin-options='{"items":1}'>

                                            <asp:Repeater ID="rptBlogImage" runat="server">
                                                <ItemTemplate>
                                                    <div>
                                                        <div class="img-thumbnail">
                                                            <img class="img-responsive" src="<%#Eval("PhotoPath").ToString().Replace("~","") %>" alt="">
                                                        </div>
                                                    </div>
                                                </ItemTemplate>
                                            </asp:Repeater>



                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-7">

                                    <div class="post-content">

                                        <h2><a href="/BlogDetay.aspx?Id=<%#Eval("Id")%>"><%#Eval("Title") %></a></h2>
                                        <p><%#Eval("Abstract").ToString().Substring(0,100) %>[...]</p>

                                    </div>
                                </div>

                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="post-meta">
                                        <span><i class="fa fa-calendar"></i><%#Convert.ToDateTime(Eval("Date")).ToShortDateString() %> </span>
                                        <span><i class="fa fa-user"></i>By <a href="#"><%#Eval("User.FullName") %> </a> </span>
                                        <span><i class="fa fa-tag"></i><a href="#"><%#Eval("Category.CategoryName") %></a></span>
                                        <span><i class="fa fa-comments"></i><a href="#">12 Comments</a></span>
                                        <a href="blog-post.html" class="btn btn-xs btn-primary pull-right">Devamını Oku...</a>
                                    </div>
                                </div>
                            </div>

                        </article>
                    </ItemTemplate>
                </asp:Repeater>




                <ul class="pagination pagination-lg pull-right">
                    <li><a href="#">«</a></li>
                    <li class="active"><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">»</a></li>
                </ul>

            </div>
        </div>

        <div class="col-md-3">
            <aside class="sidebar">

                <form>
                    <div class="input-group input-group-lg">
                        <input class="form-control" placeholder="Search..." name="s" id="s" type="text">
                        <span class="input-group-btn">
                            <button type="submit" class="btn btn-primary btn-lg"><i class="fa fa-search"></i></button>
                        </span>
                    </div>
                </form>

                <hr />

                <uc1:Categories runat="server" ID="Categories" />
                <uc1:tabs runat="server" ID="tabs" />
                <hr />

                <h4>About Us</h4>
                <p>Nulla nunc dui, tristique in semper vel, congue sed ligula. Nam dolor ligula, faucibus id sodales in, auctor fringilla libero. Nulla nunc dui, tristique in semper vel. Nam dolor ligula, faucibus id sodales in, auctor fringilla libero. </p>

            </aside>
        </div>
    </div>
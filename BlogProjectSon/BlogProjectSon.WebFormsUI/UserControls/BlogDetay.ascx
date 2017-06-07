<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="BlogDetay.ascx.cs" Inherits="BlogProjectSon.WebFormsUI.UserControls.BlogDetay" %>
		<div class="row">
						<div class="col-md-9">
							<div class="blog-posts single-post">

								<article class="post post-large blog-single-post">
									<div class="post-image">
										<div class="owl-carousel" data-plugin-options='{"items":1}'>
											
                                           <asp:Repeater ID="rptBlogEntryPhotos" runat="server">
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

									<div class="post-date">
										<span class="day">
                                             <asp:Literal id="ltDateDay"  runat="server" />
										</span>
										<span class="month">
                                             <asp:Literal id="ltDateMonth"  runat="server" />
										</span>
									</div>

									<div class="post-content">

										<h2><a href="blog-post.html"> <asp:Literal ID="ltTitle" runat="server" /></a></h2>

										<div class="post-meta">
											<span><i class="fa fa-user"></i> By <a href="#"> <asp:Literal id="ltUser" runat="server" /></a> </span>
											<span><i class="fa fa-tag"></i> <a href="#"><asp:Literal id="ltCategory" runat="server" /></a> </span>
											<span><i class="fa fa-comments"></i> <a href="#">12 Comments</a></span>
										</div>

										 <asp:Literal ID="ltContent"  runat="server" />

										<div class="post-block post-share">
											<h3><i class="fa fa-share"></i>Share this post</h3>

											<!-- AddThis Button BEGIN -->
											<div class="addthis_toolbox addthis_default_style ">
												<a class="addthis_button_facebook_like"></a>
												<a class="addthis_button_tweet"></a>
												<a class="addthis_button_pinterest_pinit"></a>
												<a class="addthis_counter addthis_pill_style"></a>
											</div>
											<script type="text/javascript" src="../../../s7.addthis.com/js/300/addthis_widget.js#pubid=xa-50faf75173aadc53"></script>
											<!-- AddThis Button END -->

										</div>

										<%--<div class="post-block post-author clearfix">
											<h3><i class="fa fa-user"></i>Author</h3>
											<div class="img-thumbnail">
												<a href="blog-post.html">
													<img src="img/avatar.jpg" alt="">
												</a>
											</div>
											<p><strong class="name"><a href="#"><asp:Literal id="ltAuthor" runat="server" /></a></strong></p>
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae. Sed dui lorem, adipiscing in adipiscing et, interdum nec metus. Mauris ultricies, justo eu convallis placerat, felis enim ornare nisi, vitae mattis nulla ante id dui. </p>
										</div>--%>

										<div class="post-block post-comments clearfix">
											<h3><i class="fa fa-comments"></i>Comments (3)</h3>

											<ul class="comments">
												<li>
													<div class="comment">
														<div class="img-thumbnail">
															<img class="avatar" alt="" src="img/avatar-2.jpg">
														</div>
														<div class="comment-block">
															<div class="comment-arrow"></div>
															<span class="comment-by">
																<strong>John Doe</strong>
																<span class="pull-right">
																	<span> <a href="#"><i class="fa fa-reply"></i> Reply</a></span>
																</span>
															</span>
															<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae, gravida pellentesque urna varius vitae. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae. Sed dui lorem, adipiscing in adipiscing et, interdum nec metus. Mauris ultricies, justo eu convallis placerat, felis enim ornare nisi, vitae mattis nulla ante id dui.</p>
															<span class="date pull-right">January 12, 2013 at 1:38 pm</span>
														</div>
													</div>

													<ul class="comments reply">
														<li>
															<div class="comment">
																<div class="img-thumbnail">
																	<img class="avatar" alt="" src="img/avatar-3.jpg">
																</div>
																<div class="comment-block">
																	<div class="comment-arrow"></div>
																	<span class="comment-by">
																		<strong>John Doe</strong>
																		<span class="pull-right">
																			<span> <a href="#"><i class="fa fa-reply"></i> Reply</a></span>
																		</span>
																	</span>
																	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae, gravida pellentesque urna varius vitae.</p>
																	<span class="date pull-right">January 12, 2013 at 1:38 pm</span>
																</div>
															</div>
														</li>
														<li>
															<div class="comment">
																<div class="img-thumbnail">
																	<img class="avatar" alt="" src="img/avatar-4.jpg">
																</div>
																<div class="comment-block">
																	<div class="comment-arrow"></div>
																	<span class="comment-by">
																		<strong>John Doe</strong>
																		<span class="pull-right">
																			<span> <a href="#"><i class="fa fa-reply"></i> Reply</a></span>
																		</span>
																	</span>
																	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae, gravida pellentesque urna varius vitae.</p>
																	<span class="date pull-right">January 12, 2013 at 1:38 pm</span>
																</div>
															</div>
														</li>
													</ul>
												</li>
												<li>
													<div class="comment">
														<div class="img-thumbnail">
															<img class="avatar" alt="" src="img/avatar.jpg">
														</div>
														<div class="comment-block">
															<div class="comment-arrow"></div>
															<span class="comment-by">
																<strong>John Doe</strong>
																<span class="pull-right">
																	<span> <a href="#"><i class="fa fa-reply"></i> Reply</a></span>
																</span>
															</span>
															<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
															<span class="date pull-right">January 12, 2013 at 1:38 pm</span>
														</div>
													</div>
												</li>
												<li>
													<div class="comment">
														<div class="img-thumbnail">
															<img class="avatar" alt="" src="img/avatar.jpg">
														</div>
														<div class="comment-block">
															<div class="comment-arrow"></div>
															<span class="comment-by">
																<strong>John Doe</strong>
																<span class="pull-right">
																	<span> <a href="#"><i class="fa fa-reply"></i> Reply</a></span>
																</span>
															</span>
															<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
															<span class="date pull-right">January 12, 2013 at 1:38 pm</span>
														</div>
													</div>
												</li>
											</ul>

										</div>

										<div class="post-block post-leave-comment">
											<h3>Yorum Yaz</h3>

											<form action="#" method="post">
												<div class="row">
													<div class="form-group">
														<div class="col-md-6">
															<label>Adı Soyadı*</label>
															<input type="text"  maxlength="50" class="form-control" id="txtFullName" required runat="server">
														</div>
														<div class="col-md-6">
															<label>E-Posta *</label>
															<input type="email"  maxlength="50" class="form-control"  id="txtEmail" required runat="server">
														</div>
													</div>
												</div>
												<div class="row">
													<div class="form-group">
														<div class="col-md-12">
															<label>Yorum *</label>
															<textarea maxlength="5000" rows="10" class="form-control" id="txtComment" runat="server" required></textarea>
														</div>
													</div>
												</div>
												<div class="row">
													<div class="col-md-12">
                                                        <asp:Button id="btnComment" runat="server" text="Gönder" class="btn btn-success btn-lg"  OnClick="btnComment_Click"/>
													</div>
												</div>
											</form>
										</div>

									</div>
								</article>

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

								<h4>Categories</h4>
								<ul class="nav nav-list primary push-bottom">
									<li><a href="#">Design</a></li>
									<li><a href="#">Photos</a></li>
									<li><a href="#">Videos</a></li>
									<li><a href="#">Lifestyle</a></li>
									<li><a href="#">Technology</a></li>
								</ul>

								<div class="tabs">
									<ul class="nav nav-tabs">
										<li class="active"><a href="#popularPosts" data-toggle="tab"><i class="fa fa-star"></i> Popular</a></li>
										<li><a href="#recentPosts" data-toggle="tab">Recent</a></li>
									</ul>
									<div class="tab-content">
										<div class="tab-pane active" id="popularPosts">
											<ul class="simple-post-list">
												<li>
													<div class="post-image">
														<div class="img-thumbnail">
															<a href="blog-post.html">
																<img src="img/blog/blog-thumb-1.jpg" alt="">
															</a>
														</div>
													</div>
													<div class="post-info">
														<a href="blog-post.html">Nullam Vitae Nibh Un Odiosters</a>
														<div class="post-meta">
															 Jan 10, 2013
														</div>
													</div>
												</li>
												<li>
													<div class="post-image">
														<div class="img-thumbnail">
															<a href="blog-post.html">
																<img src="img/blog/blog-thumb-2.jpg" alt="">
															</a>
														</div>
													</div>
													<div class="post-info">
														<a href="blog-post.html">Vitae Nibh Un Odiosters</a>
														<div class="post-meta">
															 Jan 10, 2013
														</div>
													</div>
												</li>
												<li>
													<div class="post-image">
														<div class="img-thumbnail">
															<a href="blog-post.html">
																<img src="img/blog/blog-thumb-3.jpg" alt="">
															</a>
														</div>
													</div>
													<div class="post-info">
														<a href="blog-post.html">Odiosters Nullam Vitae</a>
														<div class="post-meta">
															 Jan 10, 2013
														</div>
													</div>
												</li>
											</ul>
										</div>
										<div class="tab-pane" id="recentPosts">
											<ul class="simple-post-list">
												<li>
													<div class="post-image">
														<div class="img-thumbnail">
															<a href="blog-post.html">
																<img src="img/blog/blog-thumb-2.jpg" alt="">
															</a>
														</div>
													</div>
													<div class="post-info">
														<a href="blog-post.html">Vitae Nibh Un Odiosters</a>
														<div class="post-meta">
															 Jan 10, 2013
														</div>
													</div>
												</li>
												<li>
													<div class="post-image">
														<div class="img-thumbnail">
															<a href="blog-post.html">
																<img src="img/blog/blog-thumb-3.jpg" alt="">
															</a>
														</div>
													</div>
													<div class="post-info">
														<a href="blog-post.html">Odiosters Nullam Vitae</a>
														<div class="post-meta">
															 Jan 10, 2013
														</div>
													</div>
												</li>
												<li>
													<div class="post-image">
														<div class="img-thumbnail">
															<a href="blog-post.html">
																<img src="img/blog/blog-thumb-1.jpg" alt="">
															</a>
														</div>
													</div>
													<div class="post-info">
														<a href="blog-post.html">Nullam Vitae Nibh Un Odiosters</a>
														<div class="post-meta">
															 Jan 10, 2013
														</div>
													</div>
												</li>
											</ul>
										</div>
									</div>
								</div>

								<hr />

								<h4>About Us</h4>
								<p>Nulla nunc dui, tristique in semper vel, congue sed ligula. Nam dolor ligula, faucibus id sodales in, auctor fringilla libero. Nulla nunc dui, tristique in semper vel. Nam dolor ligula, faucibus id sodales in, auctor fringilla libero. </p>

							</aside>
						</div>
					</div>

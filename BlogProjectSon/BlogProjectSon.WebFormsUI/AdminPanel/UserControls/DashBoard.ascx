<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DashBoard.ascx.cs" Inherits="BlogProjectSon.WebFormsUI.AdminPanel.UserControls.DashBoard" %>
<%@ Register Src="~/AdminPanel/UserControls/KullaniciYonetimi.ascx" TagPrefix="uc1" TagName="KullaniciYonetimi" %>

<section class="content-header">
      <h1>
        Onay beklenilen durumlar
        <small>Gösterge tabloları</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> AnaSayfa</a></li>
        <li class="active">Gösterge tabloları</li>
      </ol>
    </section>
<section class="content">
      
      <div class="row">
        <div class="col-lg-3 col-xs-6" style="width:300px">
          <!-- small box -->
          <div class="small-box bg-aqua">
            <div class="inner">
              <h3>
                  <asp:Literal id="ltCountOfUnConfirmedUsers" runat="server"></asp:Literal>
              </h3>

              <p>Onay bekleyen kullanıcılar</p>
            </div>
            <div class="icon">
              <i class="ion ion-person-add"></i>
            </div>
            <a href="../AdminPanel/KullaniciYonetimi.aspx" class="small-box-footer">Göster <i class="fa fa-arrow-circle-right"></i></a>
            
          </div>
        </div>
         <div class="col-lg-3 col-xs-6" style="width:300px">
          <!-- small box -->
          <div class="small-box bg-yellow">
            <div class="inner">
              <h3>
                  <asp:Literal id="ltCountOfUnConfirmedArticle" runat="server"></asp:Literal>

              </h3>

              <p>Onay bekleyen yazılar</p>
            </div>
            <div class="icon">
              <i class="icon ion-ios-paper"></i>
            </div>
            <a href="../AdminPanel/YaziOnaylama.aspx" class="small-box-footer">Göster <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
      </div>
      

    </section>
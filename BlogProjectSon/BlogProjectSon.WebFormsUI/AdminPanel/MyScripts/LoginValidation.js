$(function () {
    $("#btnLogin").click(function () {


        var username = $("#txtUserName").val();
        var password = $("#txtPassword").val();
        var divClientUserMessage = $("#divClientUserMessage");
        var divClientPasswordMessage = $("#divClientPasswordMessage");
        var controlValue = true;
        divClientUserMessage.html("");
        divClientPasswordMessage.html("");
     
        divClientUserMessage.removeClass("callout callout-danger");
        divClientPasswordMessage.removeClass("callout callout-danger");


       
        if (username == "") {
            divClientUserMessage.html("Lütfen kullanıcı adını girin..!");
            divClientUserMessage.addClass("callout callout-danger");
            controlValue = false;
        }
       if (password == "") {
            divClientPasswordMessage.html("Lütfen şifre girin..!");
            divClientPasswordMessage.addClass("callout callout-danger");
            controlValue = false;//sunucuya gönderme
            
        }
      
        return controlValue; 
    });


});
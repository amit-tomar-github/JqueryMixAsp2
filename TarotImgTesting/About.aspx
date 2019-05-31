<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="TarotImgTesting.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #includedContent {
            border:2px solid orange;
        }
    </style>
    
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <script type="text/javascript">
        //$(function () {
        //    alert("Label value::" + $("#hfData").val().toString());
        //    var count = $("#hfData").val().toString();
        //    if (count == "First") {
        //        $("#includedContent").load("Contact.aspx");
        //    }
        //    else if (count == "Second") {
        //        $("#includedContent").load("Account/Login.aspx");
        //    }
        //    else {
        //        alert("Dude wrong entry");
        //    }
        //});


      function showPage() {
          $(function () {
              //alert("Label value::" + $("#hfData").val().toString());
              var count = $("#hfData").val().toString();
              if (count == "First") {
                  $("#includedContent").load("Contact.aspx");
              }
              else if (count == "Second") {
                  $("#includedContent").load("Account/Login.aspx");
              }
              else {
                  alert("Dude wrong entry");
              }
          });
      }
    </script>

    <h2><%: Title %>.</h2>
    <h3>Your application description page.</h3>
    <p>Use this area to provide additional information.</p>
    <br/>
    <br/>
    <asp:Label ID="lblData" runat="server" Text="Label" ClientIDMode="Static"></asp:Label>
    <asp:HiddenField ID="hfData" runat="server" ClientIDMode="Static" />
    <br/>
    <br/>
    <div class="row">
        <div class="col-md-12">
            <div id="includedContent"></div>
        </div>
    </div>
      
</asp:Content>

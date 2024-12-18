   <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm.aspx.cs" Inherits="WebApplication9.WebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <title>Registration</title>
</head>
<body>
  <div class="container">
    <div class="bg-primary p-4 rounded mb-3 mt-3 text-center">
      <h1>Registration Form</h1>
    </div>

    <form class="bg-light row g-3" id="form1" runat="server" method="post">
      <div class="col-md-6">
        <label for="inputEmail4" class="form-label">Name</label>
        <asp:TextBox ID="TextName" CssClass="form-control" runat="server"></asp:TextBox>
    
      </div>

      <div class="col-md-6">
        <label for="inputPassword4" class="form-label">Email</label>
        <asp:TextBox id="txtemail" CssClass="form-control" runat="server" TextMode="Email"></asp:TextBox>
          
      </div>

      <div class="col-12">
        <label for="inputAddress" class="form-label">Address</label>
        <asp:TextBox ID="Textadd" CssClass="form-control" runat="server"></asp:TextBox>
      </div>

      <div class="col-4">
        <label for="inputAddress" class="form-label">Username</label>
        <asp:TextBox ID="Textusername" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
      </div>

      <div class="col-md-4">
        <label for="inputZip" class="form-label">File</label>
        <asp:FileUpload ID="FileUpload1" CssClass="form-control" runat="server" />
      </div>

      <div class="col-md-4">
        <label for="inputZip" class="form-label">DOB</label>
        <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" TextMode="DateTimeLocal"></asp:TextBox>
      </div>

      <div class="col-md-6">
        <label for="inputCity" class="form-label">Color</label><br />
        <asp:RadioButtonList 
          ID="RadioButtonList1" 
          runat="server" 
          CssClass="form-check">
          <asp:ListItem Value="white">&nbsp;White</asp:ListItem>
          <asp:ListItem Value="black">&nbsp; Black</asp:ListItem>
        </asp:RadioButtonList>
      </div>

      <div class="col-md-4">
        <label for="inputState" class="form-label">Gender</label>
        <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
          <asp:ListItem Value="male">Male</asp:ListItem>
          <asp:ListItem Value="female">Female</asp:ListItem>
        </asp:DropDownList>
      </div>

      <div class="col-12">
        <label for="sportsSelection" class="form-label">Sports</label>
        <asp:CheckBoxList 
          ID="SportsCheckBoxList" 
          runat="server" 
          CssClass="form-check">
          <asp:ListItem Value="1">&nbsp;Soccer</asp:ListItem>
          <asp:ListItem Value="2">&nbsp;Basketball</asp:ListItem>
          <asp:ListItem Value="3">&nbsp;Tennis</asp:ListItem>
          <asp:ListItem Value="4">&nbsp;Cricket</asp:ListItem>
          <asp:ListItem Value="5">&nbsp;Baseball</asp:ListItem>
        </asp:CheckBoxList>
      </div>

      <div class="col-12">
        <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="Submit" OnClick="Button1_Click" />
      </div>
    </form>
  </div>
</body>

</html>

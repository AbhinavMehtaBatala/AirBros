<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Forgot_Password.aspx.cs" Inherits="AirBros.Forgot_Password" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        body{
            background:url('Images/background_blur.jpg') no-repeat center center fixed #000;
            background-size: cover;
        }
        ::placeholder {
            color:white;
        }
        .tablestyle {
            width: 420px;
            height:450px;
            align-items:center;
            background: rgba(204,255,238,0.04);
            box-shadow: -1px 4px 28px 0px rgba(0,0,0,0.75);
            margin: 7% 10% 7% auto;
            border: 2px solid transparent;
            text-align:center;
            position:relative;
        }
        .icon {
            text-align:center;
        }
        .ico {
            padding-top: 13px;
              background: transparent;
              color: white;
              min-width: 50px;
              text-align: center;
        }
        .hed {
            height: 60px;
            padding:40px 0px 25px 0px;
            text-align:center;
            position:relative;
        }
        .input-field {
            width: 80%;
            padding: 10px;
            outline: none;
            text-decoration-color:white;
            border:none;
            margin-right:20px;
            border-bottom: 2px solid white;
            background-color:transparent;
        }
        .input-field:focus {
            border-bottom: 2px solid dodgerblue;
        }
        .new {
            height: 60px;
            text-align:center;
            position:relative;
        }
        .buttn {
            padding-bottom:20px;
            height: 60px;
            margin-left:15%;
            margin-top:25px;
            width:70%;
            text-align:center;
            position:relative;
        }
        .btn {
            background-color:transparent ;
            color: dodgerblue;
            padding: 15px 20px;
            font-size: 20px;
            border: 2px solid dodgerblue;
            cursor: pointer;
            width: 100%;
            border-color: dodgerblue;
            text-align:center;
        }
        .btn:hover,.btn:focus {
            background: dodgerblue;
            color:white;
        }
        svg:hover {
            fill: dodgerblue;
        }
        .ico:hover{
            color: dodgerblue;
        }
    </style>
    <div class="tablestyle">
        <div class="hed">
            <asp:Label ID="Label1" runat="server" ForeColor="#ffffff" Font-Size="XX-Large" Text="Password Recovery"></asp:Label>
            <div class="icon">
                <svg width="4em" height="4em" viewBox="0 0 16 16" class="bi bi-key-fill" fill="white" xmlns="http://www.w3.org/2000/svg">
                    <path fill-rule="evenodd" d="M3.5 11.5a3.5 3.5 0 1 1 3.163-5H14L15.5 8 14 9.5l-1-1-1 1-1-1-1 1-1-1-1 1H6.663a3.5 3.5 0 0 1-3.163 2zM2.5 9a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"/>
                </svg>
            </div>
            <div class="new">
                <i class="glyphicon glyphicon-envelope ico"></i>  
                <asp:TextBox ID="Username" runat="server" TextMode="Email" placeholder="Enter Email" CssClass="input-field" ToolTip="E- Mail" ForeColor="White"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Username" Display="Dynamic" ErrorMessage="*" Font-Bold="True" Font-Size="Large" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </div>
            <div class="new">
                <i class="glyphicon glyphicon-earphone ico"></i>  
                <asp:TextBox ID="Phone" runat="server" TextMode="Phone" placeholder="Enter Phone Number" CssClass="input-field" ToolTip="Phone" ForeColor="White"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ErrorMessage="*" Font-Bold="True" Font-Size="Large" ForeColor="Red" ControlToValidate="Phone" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="Phone" ErrorMessage="Enter exact Phone Number" ForeColor="Red" Font-Bold="true" Font-Size="Large" MaximumValue="9999999999" MinimumValue="1000000000" SetFocusOnError="True" Type="Double" Display="Dynamic">*</asp:RangeValidator>
            </div>
            <div>
                <asp:Label ID="Message" runat="server" Font-Bold="False" Font-Size="Large" ForeColor="Red"></asp:Label>
            </div>
            <div class="buttn">
                <asp:Button ID="Button1" runat="server" CssClass="btn" Text="Submit" ToolTip="Submit" OnClick="Button1_Click" />
            </div>
        </div>
    </div>
</asp:Content>

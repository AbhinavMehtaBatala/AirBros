<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AirBros.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style type="text/css" runat="server">
        body{
            background:url('Images/background_blur.jpg') no-repeat center center fixed #000;
            background-size: cover;
        }
        ::placeholder {
            color:white;
        }
        /* Table*/
        .tablestyle {
            width: 420px;
            height:450px;
            align-items:center;
            background: rgba(204,255,238,0.04);
            box-shadow: -1px 4px 28px 0px rgba(0,0,0,0.75);
            margin: 7% 10% 2% auto;
            border: 2px solid transparent;
            text-align:center;
            position:relative;
            border-radius:4px;
        }
        /*.round {
            border-radius: 15px;
            padding: 5px;
            height: 40px;
            width: 70%;
            border-color: aquamarine;
        }*/
        /* Icon*/
        .icon {
              padding-top: 13px;
              background: transparent;
              color: white;
              min-width: 50px;
              text-align: center;
        }
        .icon:hover{
            color: dodgerblue;
        }
        /*Text box Class*/
        .input-field {
            width: 80%;
            padding: 10px;
            outline: none;
            text-decoration-color:white;
            border:none;
            border-bottom: 2px solid white;
            background-color:transparent;
        }
        .input-field:focus {
            border-bottom: 2px solid dodgerblue;
        }
        /*For Login Form Heading*/
        .hed {
            height: 60px;
            padding:40px 0px 25px 0px;
            text-align:center;
            position:relative;
        }
        /* Username and Password*/
        .new {
            height: 60px;
            text-align:center;
            position:relative;

        }
        /* Forgot Password*/
        .new-p {
            padding-right:27px;
            height:40px;
            text-align:right;
            position:relative;
        }
        /*Button*/
        .buttn {
            padding-bottom:20px;
            height: 60px;
            width:80%;
            text-align:center;
            position:relative;
        }
        .btn {
            background-color:transparent ;
            color: dodgerblue;
            padding: 15px 20px;
            font-size: 18px;
            border: 2px solid dodgerblue;
            cursor: pointer;
            width: 80%;
            border-color: dodgerblue;
            cursor: pointer;
        }
        .btn:hover,.btn:focus {
            background: dodgerblue;
            color:white;
        }
        /* Validation*/
        .val {
            padding:2px 20px 2px 2px;
            
            width:50%;
        }
    </style>
<!--    <script type="text/javascript">
        /* if($('#tab').is(":hover"))
         {
             $('#tab').css("border", "2px dodgerblue");
             $('#icon-u').css("color", "dodgerblue");
         };*/
    </script>
-->
        <table id="tab" class="tablestyle">
            <tr>
                <td class="hed" colspan="2">
                    <asp:Label ID="Label1" runat="server" ForeColor="#ffffff" Font-Size="XX-Large" Text="LOGIN FORM"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                <svg id="icon-u" width="8em" height="8em" viewBox="0 0 16 16" class="bi bi-person-circle" fill="white" xmlns="http://www.w3.org/2000/svg" >
                                    <path d="M13.468 12.37C12.758 11.226 11.195 10 8 10s-4.757 1.225-5.468 2.37A6.987 6.987 0 0 0 8 15a6.987 6.987 0 0 0 5.468-2.63z"/>
                                    <path fill-rule="evenodd" d="M8 9a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
                                    <path fill-rule="evenodd" d="M8 1a7 7 0 1 0 0 14A7 7 0 0 0 8 1zM0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8z"/>
                </svg>
                </td>
            </tr>
            <tr>
                <td class="new" colspan="2">
                    <div>
                        <i class="glyphicon glyphicon-envelope icon"></i>  
                        <asp:TextBox ID="Username" runat="server" TextMode="Email" placeholder="Enter Email" CssClass="input-field" ToolTip="Username" ForeColor="White"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Username" Display="Dynamic" Font-Size="Large" Font-Bold="true" ErrorMessage="* Fields are mandatory" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </div>
                </td>
            </tr>
            <tr>
                <td class="new" colspan="2">
                    <div>
                        <i class="glyphicon glyphicon-lock icon"></i>
                        <asp:TextBox ID="Password" runat="server" TextMode="Password" CssClass="input-field" placeholder="Enter Password" ForeColor="White">Password</asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Password" Display="Dynamic" Font-Size="Large" Font-Bold="true" ErrorMessage="* Fields are mandatory" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </div>
                </td>
            </tr>
            <tr>
                <td class="val">
                        <asp:Label ID="Label2" runat="server" Font-Bold="False" Font-Size="Large" ForeColor="Red"></asp:Label><br />
                        <asp:HyperLink ID="HyperLink2" NavigateUrl="~/User_Registration.aspx" runat="server" Visible="False">Click here to Register</asp:HyperLink>
                </td>
                <td class="val">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" />
                </td>
            </tr>
            <tr>
                <td class="new-p" colspan="2">
                    <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#CCFFFF" NavigateUrl="~/Forgot_Password.aspx">Forgot Password?</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="buttn" colspan="2">
                    <asp:Button ID="Button1" runat="server" CssClass="btn" Text="Login" OnClick="Button1_Click" ToolTip="Login" />
                </td>
            </tr>
            
        </table>
</asp:Content>

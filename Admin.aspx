<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="AirBros.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .tablestyle {
            width: 420px;
            height:450px;
            align-items:center;
            background: rgba(204,255,238,0.04);
            box-shadow: -1px 4px 28px 0px rgba(0,0,0,0.75);
            border: 2px solid transparent;
            text-align:center;
            position:relative;
            margin:auto;
        }
        .hed {
            height: 60px;
            padding:40px 0px 25px 0px;
            margin-bottom:20px;
            text-align:center;
            position:relative;
        }
        .new {
            height: 60px;
            text-align:center;
            position:relative;
        }
        svg:hover{
            fill:dodgerblue;
        }
        .input-field {
            width: 80%;
            padding: 10px;
            margin-top:20px;
            outline: none;
            text-decoration-color:gray;
            border:none;
            border-bottom: 2px solid gray;
            background-color:transparent;
        }
        .input-field:focus, .input-field:hover {
            border-bottom: 2px solid dodgerblue;
        }
        .buttn {
            padding-bottom:20px;
            height: 60px;
            width:80%;
            margin: 20px 60px 20px 30px;
            text-align:center;
            position:relative;
        }
        .btn {
            background-color:transparent ;
            color: gray;
            padding: 15px;
            font-size: 18px;
            border: 2px solid gray;
            cursor: pointer;
            width: 90%;
            border-color: gray;
            cursor: pointer;
            margin:20px;
        }
        .btn:hover,.btn:focus {
            background: dodgerblue;
            color:white;
        }
        .label {
            text-align:center;
            padding: 40px 0px 25px 0px;
            margin-bottom:20px;
            position:relative;
        }
    </style>
    <div>
       <div class="tablestyle">
           <div class="hed">
               <asp:Label ID="Label1" runat="server" ForeColor="gray" Font-Size="XX-Large" Text="ADMIN LOGIN"></asp:Label>
           </div>
           <div>
               <svg width="7em" height="7em" viewBox="0 0 16 16" class="bi bi-sliders" fill="gray" xmlns="http://www.w3.org/2000/svg">
                    <path fill-rule="evenodd" d="M11.5 2a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3zM9.05 3a2.5 2.5 0 0 1 4.9 0H16v1h-2.05a2.5 2.5 0 0 1-4.9 0H0V3h9.05zM4.5 7a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3zM2.05 8a2.5 2.5 0 0 1 4.9 0H16v1H6.95a2.5 2.5 0 0 1-4.9 0H0V8h2.05zm9.45 4a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3zm-2.45 1a2.5 2.5 0 0 1 4.9 0H16v1h-2.05a2.5 2.5 0 0 1-4.9 0H0v-1h9.05z"/>
                </svg>
           </div>
           <div class="new">
               <svg width="1.5em" height="1.5em" viewBox="0 0 16 16" class="bi bi-person-lines-fill" fill="gray" xmlns="http://www.w3.org/2000/svg">
                    <path fill-rule="evenodd" d="M1 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H1zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm7 1.5a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1h-2a.5.5 0 0 1-.5-.5zm-2-3a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 0 1h-4a.5.5 0 0 1-.5-.5zm0-3a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 0 1h-4a.5.5 0 0 1-.5-.5zm2 9a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1h-2a.5.5 0 0 1-.5-.5z"/>
                </svg>
               <asp:TextBox ID="Username" runat="server" placeholder="Username" CssClass="input-field" ToolTip="Username" ForeColor="dodgerblue"></asp:TextBox>
           </div>
           <div class="new">
               <svg width="1.5em" height="1.5em" viewBox="0 0 16 16" class="bi bi-key-fill" fill="GRAY" xmlns="http://www.w3.org/2000/svg">
                    <path fill-rule="evenodd" d="M3.5 11.5a3.5 3.5 0 1 1 3.163-5H14L15.5 8 14 9.5l-1-1-1 1-1-1-1 1-1-1-1 1H6.663a3.5 3.5 0 0 1-3.163 2zM2.5 9a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"/>
                </svg>
               <asp:TextBox ID="Password" runat="server" placeholder="Password" CssClass="input-field" ToolTip="Password" TextMode="Password" ForeColor="dodgerblue"></asp:TextBox>
           </div>
           <div class="buttn">
               <asp:Button ID="Login" runat="server" CssClass="btn" Text="Login" ToolTip="Login" OnClick="Login_Click" />
           </div>
           <div class="label">
               <asp:Label ID="Texter" runat="server" Font-Size="Medium" ForeColor="Red"></asp:Label>
           </div>
       </div>
    </div>

</asp:Content>

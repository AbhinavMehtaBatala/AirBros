<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="User_Registration.aspx.cs" Inherits="AirBros.User_Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
            body{
                background:url('Images/bg-image-blur.jpg') no-repeat center center fixed #000;
                background-size: cover;
            }
            svg:hover {
                fill: dodgerblue;
            }
            ::placeholder {
                color:white;
            }
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
            .tablestyle {
                height: 700px;
                width: 550px;
                margin:7% 10% 2% auto;
                background: rgba(204,255,238,0.04);
                box-shadow: -1px 4px 28px 0px rgba(0,0,0,0.75);
                border-radius: 4px;
                border : 2px solid transparent;
                padding:20px;
                text-align: center;
                position: relative;
            }
            .hed {
                height: 60px;
                padding:40px 0px 25px 0px;
                text-align:center;
                position:relative;
            }
            .auto-style1 {
                width: 50%;
                margin-left:auto;
                margin-right:auto;
            }
            .table-data {
                height: 30px;
                padding: 10px 10% 10px 10%;
                width:100%;
                text-align:left;
            }
            .radiob {
                height: 30px;
                padding: 10px 3px 10px 20%;
                width:90%;
                text-align:left;
            }
            .boxes{
                width:90%;
                align-self:center;
                padding: 10px;
                font-size: 16px;
                outline: none;
                text-decoration-color:white;
                border:none;
                border-bottom: 2px solid white;
                background-color:transparent;
            }
            .boxes:hover, .boxes:focus {
                border-bottom: 2px solid dodgerblue;
            }
            .buttn {
                margin:10px;
                padding-bottom:20px;
                height: 60px;
                width:80%;
                text-align:center;
                position:relative;
            }
            .btn {
                background-color:transparent ;
                color: white;
                padding: 15px 20px;
                font-size: 18px;
                border: 2px solid white;
                cursor: pointer;
                width: 100%;
                border-color: white;
                cursor: pointer;
                text-decoration-color:white;
            }
            .btn:hover,.btn:focus {
                background: dodgerblue;
                color:white;
            }
        </style>
        <script type="text/javascript">
/*            function RedirectAfterDelayFn() {  
            var seconds = 5;  
            var dvCountDown = document.getElementById("CountDown");  
            var lblCount = document.getElementById("CountDownLabel");  
            dvCountDown.style.display = "block";  
            lblCount.innerHTML = seconds;  
            setInterval(function () {  
                seconds--;  
                lblCount.innerHTML = seconds;  
                if (seconds == 0) {  
                    dvCountDown.style.display = "none";  
                    window.location = "Redirected.aspx";  
                }  
            }, 1000);  
            }
            function redirect() {
                var text = document.getElementById("Success");
                if (text = "Registration Successful !") {
                    RedirectAfterDelayFn();
                }
                else {
                    document.getElementById("Success") = "Invalid Credentials !";
                }
            } */
        </script>
        <table class="tablestyle">
            <tr>
                <td class="hed">
                    <asp:Label ID="Label1" runat="server" ForeColor="#ffffff" Font-Size="XX-Large" Text="USER REGISTRATION"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <svg width="8em" height="8em" viewBox="0 0 16 16" class="bi bi-pencil-square" fill="white" xmlns="http://www.w3.org/2000/svg">
                        <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456l-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                        <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
                    </svg>
                </td>
            </tr>
            <tr>
                <td class="buttn">
                    <asp:button id="BtnCancel" runat="server" CssClass="btn" text="Cancel" causesvalidation="false" OnClick="BtnCancel_Click" />
                </td>
            </tr>
            <tr>
                <td class="table-data">
                    <svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-person-dash" fill="white" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" d="M8 5a2 2 0 1 1-4 0 2 2 0 0 1 4 0zM6 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm6 5c0 1-1 1-1 1H1s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C9.516 10.68 8.289 10 6 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10zM11 7.5a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 0 1h-4a.5.5 0 0 1-.5-.5z"/>
                    </svg>
                    <asp:TextBox ID="Name_TB" ForeColor="white" runat="server" CssClass="boxes" placeholder="Name"></asp:TextBox>
                    <asp:RequiredFieldValidator Font-Size="Large" ID="RequiredFieldValidator8" runat="server" ControlToValidate="Name_TB" Display="Dynamic" ErrorMessage="Enter your Name" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="table-data">
                    <svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-person-dash-fill" fill="white" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" d="M1 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H1zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm5-.5a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 0 1h-4a.5.5 0 0 1-.5-.5z"/>
                    </svg>
                    <asp:TextBox ID="FatherName_TB" ForeColor="white" CssClass="boxes" runat="server" placeholder ="Father's Name"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="table-data">
                    <svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-calendar-date" fill="white" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4H1z"/>
                        <path d="M6.445 11.688V6.354h-.633A12.6 12.6 0 0 0 4.5 7.16v.695c.375-.257.969-.62 1.258-.777h.012v4.61h.675zm1.188-1.305c.047.64.594 1.406 1.703 1.406 1.258 0 2-1.066 2-2.871 0-1.934-.781-2.668-1.953-2.668-.926 0-1.797.672-1.797 1.809 0 1.16.824 1.77 1.676 1.77.746 0 1.23-.376 1.383-.79h.027c-.004 1.316-.461 2.164-1.305 2.164-.664 0-1.008-.45-1.05-.82h-.684zm2.953-2.317c0 .696-.559 1.18-1.184 1.18-.601 0-1.144-.383-1.144-1.2 0-.823.582-1.21 1.168-1.21.633 0 1.16.398 1.16 1.23z"/>
                    </svg>
                    <asp:TextBox ID="DOB_TB" CssClass="boxes" runat="server" TextMode="Date" placeholder="dd-mmm-yyyy" ForeColor="white"></asp:TextBox>
                    <asp:RequiredFieldValidator Font-Size="Large" ID="RequiredFieldValidator6" runat="server" ControlToValidate="DOB_TB" Display="Dynamic" ErrorMessage="Please enter Date of Birth" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="table-data">
                    <svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-phone" fill="white" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" d="M11 1H5a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1zM5 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H5z"/>
                        <path fill-rule="evenodd" d="M8 14a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"/>
                    </svg>
                    <asp:TextBox ID="Phone_TB" ForeColor="white" runat="server" CssClass="boxes" TextMode="Phone" placeholder="Enter your 10 digit Mobile Number"></asp:TextBox>
                    <asp:RequiredFieldValidator Font-Size="Large" ID="RequiredFieldValidator4" runat="server" ControlToValidate="Phone_TB" ErrorMessage="Please enter Mobile Number" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="Phone_TB" ErrorMessage="Enter exact Phone Number" ForeColor="Red" MaximumValue="9999999999" MinimumValue="1000000000" SetFocusOnError="True" Type="Double" Display="Dynamic">*</asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="table-data">
                    <svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-ui-radios" fill="white" xmlns="http://www.w3.org/2000/svg">
                        <path d="M7 2.5a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-7a.5.5 0 0 1-.5-.5v-1zM0 12a3 3 0 1 1 6 0 3 3 0 0 1-6 0zm7-1.5a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-7a.5.5 0 0 1-.5-.5v-1z"/>
                        <path fill-rule="evenodd" d="M7 5.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5zm0 8a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5zM3 1a3 3 0 1 0 0 6 3 3 0 0 0 0-6zm0 4.5a1.5 1.5 0 1 0 0-3 1.5 1.5 0 0 0 0 3z"/>
                    </svg>&nbsp;&nbsp;
                    <asp:Label runat="server" ID="Gen" Text="Gender : " Font-Size="Large" ForeColor="white"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="radiob">
                    <asp:RadioButtonList ID="Gender" runat="server" BackColor="Transparent" ForeColor="white" RepeatDirection="Horizontal" Width="70%">
                        <asp:ListItem>&nbsp;Male</asp:ListItem>
                        <asp:ListItem>&nbsp;Female</asp:ListItem>
                        <asp:ListItem>&nbsp;Non-Binary</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator Font-Size="Large" ID="RequiredFieldValidator7" runat="server" ControlToValidate="Gender" Display="Dynamic" ErrorMessage="Select your Gender" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td class="table-data">
                    <svg width="2em" style="margin-bottom:30px;" height="2em" viewBox="0 0 16 16" class="bi bi-house" fill="white" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" d="M2 13.5V7h1v6.5a.5.5 0 0 0 .5.5h9a.5.5 0 0 0 .5-.5V7h1v6.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5zm11-11V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z"/>
                        <path fill-rule="evenodd" d="M7.293 1.5a1 1 0 0 1 1.414 0l6.647 6.646a.5.5 0 0 1-.708.708L8 2.207 1.354 8.854a.5.5 0 1 1-.708-.708L7.293 1.5z"/>
                    </svg>
                    <asp:TextBox ID="Address_TB" ForeColor="white" CssClass="boxes" runat="server" placeholder="Address" TextMode="MultiLine" ></asp:TextBox>
                </td>
            </tr>
     <!--       <tr>
                <td class="table-data">
                    <svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-globe" fill="white" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm7.5-6.923c-.67.204-1.335.82-1.887 1.855A7.97 7.97 0 0 0 5.145 4H7.5V1.077zM4.09 4H2.255a7.025 7.025 0 0 1 3.072-2.472 6.7 6.7 0 0 0-.597.933c-.247.464-.462.98-.64 1.539zm-.582 3.5h-2.49c.062-.89.291-1.733.656-2.5H3.82a13.652 13.652 0 0 0-.312 2.5zM4.847 5H7.5v2.5H4.51A12.5 12.5 0 0 1 4.846 5zM8.5 5v2.5h2.99a12.495 12.495 0 0 0-.337-2.5H8.5zM4.51 8.5H7.5V11H4.847a12.5 12.5 0 0 1-.338-2.5zm3.99 0V11h2.653c.187-.765.306-1.608.338-2.5H8.5zM5.145 12H7.5v2.923c-.67-.204-1.335-.82-1.887-1.855A7.97 7.97 0 0 1 5.145 12zm.182 2.472a6.696 6.696 0 0 1-.597-.933A9.268 9.268 0 0 1 4.09 12H2.255a7.024 7.024 0 0 0 3.072 2.472zM3.82 11H1.674a6.958 6.958 0 0 1-.656-2.5h2.49c.03.877.138 1.718.312 2.5zm6.853 3.472A7.024 7.024 0 0 0 13.745 12H11.91a9.27 9.27 0 0 1-.64 1.539 6.688 6.688 0 0 1-.597.933zM8.5 12h2.355a7.967 7.967 0 0 1-.468 1.068c-.552 1.035-1.218 1.65-1.887 1.855V12zm3.68-1h2.146c.365-.767.594-1.61.656-2.5h-2.49a13.65 13.65 0 0 1-.312 2.5zm2.802-3.5h-2.49A13.65 13.65 0 0 0 12.18 5h2.146c.365.767.594 1.61.656 2.5zM11.27 2.461c.247.464.462.98.64 1.539h1.835a7.024 7.024 0 0 0-3.072-2.472c.218.284.418.598.597.933zM10.855 4H8.5V1.077c.67.204 1.335.82 1.887 1.855.173.324.33.682.468 1.068z"/>
                    </svg>
                    <asp:DropDownList ID="Country_TB" runat="server" CssClass="boxes">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator Font-Size="Large" ID="RequiredFieldValidator10" runat="server" InitialValue="0" ControlToValidate="Country_TB" Display="Dynamic" ForeColor="Red" ErrorMessage="Please select your country">*</asp:RequiredFieldValidator>
                </td>
            </tr> -->
            <tr>
                <td class="table-data">
                    <svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-mailbox" fill="white" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" d="M4 4a3 3 0 0 0-3 3v6h6V7a3 3 0 0 0-3-3zm0-1h8a4 4 0 0 1 4 4v6a1 1 0 0 1-1 1H1a1 1 0 0 1-1-1V7a4 4 0 0 1 4-4zm2.646 1A3.99 3.99 0 0 1 8 7v6h7V7a3 3 0 0 0-3-3H6.646z"/>
                        <path fill-rule="evenodd" d="M11.793 8.5H9v-1h5a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.354-.146l-.853-.854z"/>
                        <path d="M5 7c0 .552-.448 0-1 0s-1 .552-1 0a1 1 0 0 1 2 0z"/>
                    </svg>
                    <asp:TextBox ID="Pin" ForeColor="white" runat="server" CssClass="boxes" placeholder="Pincode"></asp:TextBox>
                    <asp:RequiredFieldValidator Font-Size="Large" ID="RequiredFieldValidator9" runat="server" ControlToValidate="Pin" Display="Dynamic" ForeColor="Red" ErrorMessage="Please Enter Pincode">*</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="Pin" Display="Dynamic" ErrorMessage="Not a vaild Pincode" ForeColor="Red" MaximumValue="999999" MinimumValue="100000">*</asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="table-data">
                    <svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-envelope" fill="white" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V4zm2-1a1 1 0 0 0-1 1v.217l7 4.2 7-4.2V4a1 1 0 0 0-1-1H2zm13 2.383l-4.758 2.855L15 11.114v-5.73zm-.034 6.878L9.271 8.82 8 9.583 6.728 8.82l-5.694 3.44A1 1 0 0 0 2 13h12a1 1 0 0 0 .966-.739zM1 11.114l4.758-2.876L1 5.383v5.73z"/>
                    </svg>
                    <asp:TextBox ID="Email_TB" ForeColor="white" CssClass="boxes" placeholder="Enter your E-Mail" runat="server" TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator Font-Size="Large" ID="RequiredFieldValidator3" runat="server" ControlToValidate="Email_TB" Display="Dynamic" ErrorMessage="Please enter your E-Mail ID" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:Label ID="Invalid" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="table-data">
                    <svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-lock" fill="white" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" d="M11.5 8h-7a1 1 0 0 0-1 1v5a1 1 0 0 0 1 1h7a1 1 0 0 0 1-1V9a1 1 0 0 0-1-1zm-7-1a2 2 0 0 0-2 2v5a2 2 0 0 0 2 2h7a2 2 0 0 0 2-2V9a2 2 0 0 0-2-2h-7zm0-3a3.5 3.5 0 1 1 7 0v3h-1V4a2.5 2.5 0 0 0-5 0v3h-1V4z"/>
                    </svg>
                    <asp:TextBox ID="Password_TB" ForeColor="white" CssClass="boxes" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator Font-Size="Large" ID="RequiredFieldValidator2" runat="server" ControlToValidate="Password_TB" ErrorMessage="Enter your Password" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="table-data">
                    <svg width="2em" height="2em
                        " viewBox="0 0 16 16" class="bi bi-lock-fill" fill="white" xmlns="http://www.w3.org/2000/svg">
                        <path d="M2.5 9a2 2 0 0 1 2-2h7a2 2 0 0 1 2 2v5a2 2 0 0 1-2 2h-7a2 2 0 0 1-2-2V9z"/>
                        <path fill-rule="evenodd" d="M4.5 4a3.5 3.5 0 1 1 7 0v3h-1V4a2.5 2.5 0 0 0-5 0v3h-1V4z"/>
                    </svg>
                    <asp:TextBox ID="PasswordCheck_TB" ForeColor="white" runat="server" CssClass="boxes" placeholder="Re-Enter Password" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator Font-Size="Large" ID="RequiredFieldValidator5" runat="server" ControlToValidate="PasswordCheck_TB" ErrorMessage="Please Re-type the Password" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" Font-Size="Large" ControlToCompare="Password_TB" ControlToValidate="PasswordCheck_TB" Display="Dynamic" ErrorMessage="Password does not Match" ForeColor="Red" SetFocusOnError="True">*</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="buttn">
                    <!--OnClientClick="redirect"-->
                    <asp:Button ID="Button1" runat="server" Text="Register" CssClass="btn"  OnClick="Button1_Click"/>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="table-data">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [User_Registration]"></asp:SqlDataSource>
                    <asp:Label ID="Success" runat="server" ForeColor="Red" style="margin-right:auto; padding-top:10px; margin-left:auto;"></asp:Label>
                </td>
            </tr>
        </table>
</asp:Content>

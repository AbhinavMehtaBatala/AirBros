<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Data.aspx.cs" Inherits="AirBros.Data" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .normal {
            width:auto;
            height: auto;
            text-align:center;
        }
        .dis {
            margin-top: 50px;
            margin:auto;
            padding-top:50px;
            text-align:center;
        }
        svg:hover {
            fill: dodgerblue ;
        }
        ::placeholder {
            color:gray;
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
                margin:auto;
                background: rgba(204,255,238,0.04);
                box-shadow: -1px 4px 28px 0px rgba(0,0,0,0.75);
                border-radius: 4px;
                border : 2px solid transparent;
                padding:20px;
                padding-top: 100px;
                text-align: center;
                position: relative;
            }
            .hed {
                height: 60px;
                padding:40px 0px 25px 0px;
                text-align:center;
                position:relative;
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
                text-decoration-color:gray;
                border:none;
                border-bottom: 2px solid gray;
                background-color:transparent;
            }
            .boxes:hover, .boxes:focus {
                border-bottom: 2px solid dodgerblue;
            }
            .buttn {
                margin:10px;
                padding-bottom:20px;
                padding-top:10px;
                height: 60px;
                width:25%;
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
                color: white;
            }
            .tablest {
                height: 400px;
                width: 400px;
                background: rgba(204,255,238,0.04);
                box-shadow: -1px 4px 28px 0px rgba(0,0,0,0.75);
                border-radius: 4px;
                border : 2px solid transparent;
                padding:20px;
                text-align: center;
                position: relative;
                margin:auto ;
                padding-bottom:60px;
            }
            .hd {
                height: 40px;
                padding: 20px 0px 20px 0px;
                text-align:center;
                position:relative;
            }
            .column {
                float: left;
                width: 50%;
            }
            /* Clear floats after the columns */
            .row:after {
                content: "";
                display: table;
                clear: both;
            }
            .tables {
                height: 300px;
                width: 300px;
                background: rgba(204,255,238,0.04);
                box-shadow: -1px 4px 28px 0px rgba(0,0,0,0.75);
                border-radius: 4px;
                border : 2px solid transparent;
                padding:20px;
                text-align: center;
                position: relative;
                margin:auto ;
                padding-bottom:60px;
            }
            .input-field {
                width: 80%;
                padding: 10px;
                outline: none;
                text-decoration-color:gray;
                border:none;
                border-bottom: 2px solid gray;
                background-color:transparent;
            }
            .input-field:hover{
                border-bottom: 2px solid dodgerblue;
            }
            .new {
                height: 60px;
                text-align:center;
                position:relative;
            }
            .val {
                padding:2px 20px 2px 2px;
                width:100%;
            }
    </style>
    <script type="text/javascript">
        function ToggleDiv(Flag) {
            if (Flag == "first")
            {
                document.getElementById('dis').style.display = 'block';
                document.getElementById('ins').style.display = 'none';
                document.getElementById('upd').style.display = 'none';
                document.getElementById('del').style.display = 'none';
            }
            else if (Flag == "second")
            {
                document.getElementById('dis').style.display = 'none';
                document.getElementById('ins').style.display = 'block';
                document.getElementById('upd').style.display = 'none';
                document.getElementById('del').style.display = 'none';
            }
            else if (Flag == "third") {
                document.getElementById('dis').style.display = 'none';
                document.getElementById('ins').style.display = 'none';
                document.getElementById('upd').style.display = 'block';
                document.getElementById('del').style.display = 'none';
            }
            else
            {
                document.getElementById('dis').style.display = 'none';
                document.getElementById('ins').style.display = 'none';
                document.getElementById('upd').style.display = 'none';
                document.getElementById('del').style.display = 'display';
            }
        }
    </script>
    <div runat="server" class="row">
        <div>
            <table class="tablest">
                <tr>
                    <td colspan="4" class="hd" runat="server">
                        <asp:Label ID="Label3" runat="server" ForeColor="dodgerblue" Font-Size="X-Large" Text="ADMIN CONTROLS"></asp:Label>
                    </td>            
                </tr>
                <tr>
                    <td class="buttn" runat="server">
                        <asp:RadioButton ID="RB1" Text ="Display" runat="server" ForeColor="Gray" GroupName="a" />                        
                    </td>
                    <td class="buttn" runat="server">
                        <asp:RadioButton ID="RB2" Text ="Insert" runat="server" ForeColor="Gray" GroupName="a" /> 
 
                    </td>
                    <td class="buttn" runat="server">
                        <asp:RadioButton ID="RB3" Text ="Update" runat="server" ForeColor="Gray" GroupName="a" />
                    </td>
                    <td class="buttn" runat="server">
                        <asp:RadioButton ID="RB4" Text ="Delete" runat="server" ForeColor="Gray" GroupName="a" />
                    </td>
                </tr>
                <tr>
                    <td class="buttn" colspan ="4" runat="server">
                        <asp:Button ID="Button1" runat="server" Text="OK" CssClass="btn" OnClick="Button1_Click"/>
                    </td>
                </tr>
            </table>       
        </div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <div>
            <asp:Panel ID="disply" runat="server" Visible="false">
                <div id="dis" runat="server">
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width ="90%" CellSpacing="2" >
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="DodgerBlue" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                </div>
            </asp:Panel>
            <asp:Panel ID ="insrt" runat="server" Visible="false">
                <div id="ins" runat="server">
                    <table class="tablestyle" runat="server">
                        <tr>
                            <td class="hed">
                                <asp:Label ID="Label1" runat="server" ForeColor="gray" Font-Size="XX-Large" Text="USER REGISTRATION"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <svg width="8em" height="8em" viewBox="0 0 16 16" class="bi bi-pencil-square" fill="gray" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456l-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                                    <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
                                </svg>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" class="table-data">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [User_Registration]"></asp:SqlDataSource>
                                <asp:Label ID="Success" runat="server" ForeColor="Red" style="margin-right:auto; padding-top:10px; margin-left:auto;"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="buttn">
                                <asp:button id="btnCancel" runat="server" CssClass="btn" text="Exit" causesvalidation="false" OnClick="btnCancel_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" BorderStyle="Solid" ForeColor="Red" Width="80%" style="text-align:center; margin-left:10%; margin-right:10%; margin-top:10px; margin-bottom:10px;" />

                            </td>
                        </tr>
                        <tr>
                            <td class="table-data">
                                <svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-person-dash" fill="gray" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" d="M8 5a2 2 0 1 1-4 0 2 2 0 0 1 4 0zM6 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm6 5c0 1-1 1-1 1H1s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C9.516 10.68 8.289 10 6 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10zM11 7.5a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 0 1h-4a.5.5 0 0 1-.5-.5z"/>
                                </svg>
                                <asp:TextBox ID="Name_TB" ForeColor="gray" runat="server" CssClass="boxes" placeholder="Name"></asp:TextBox>
                                <asp:RequiredFieldValidator Font-Size="Large" ID="RequiredFieldValidator8" runat="server" ControlToValidate="Name_TB" Display="Dynamic" ErrorMessage="Enter your Name" ForeColor="Red">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="table-data">
                                <svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-person-dash-fill" fill="gray" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" d="M1 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H1zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm5-.5a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 0 1h-4a.5.5 0 0 1-.5-.5z"/>
                                </svg>
                                <asp:TextBox ID="FatherName_TB" ForeColor="gray" CssClass="boxes" runat="server" placeholder ="Father's Name"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="table-data">
                                <svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-calendar-date" fill="gray" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4H1z"/>
                                    <path d="M6.445 11.688V6.354h-.633A12.6 12.6 0 0 0 4.5 7.16v.695c.375-.257.969-.62 1.258-.777h.012v4.61h.675zm1.188-1.305c.047.64.594 1.406 1.703 1.406 1.258 0 2-1.066 2-2.871 0-1.934-.781-2.668-1.953-2.668-.926 0-1.797.672-1.797 1.809 0 1.16.824 1.77 1.676 1.77.746 0 1.23-.376 1.383-.79h.027c-.004 1.316-.461 2.164-1.305 2.164-.664 0-1.008-.45-1.05-.82h-.684zm2.953-2.317c0 .696-.559 1.18-1.184 1.18-.601 0-1.144-.383-1.144-1.2 0-.823.582-1.21 1.168-1.21.633 0 1.16.398 1.16 1.23z"/>
                                </svg>
                                <asp:TextBox ID="DOB_TB" CssClass="boxes" runat="server" TextMode="Date" placeholder="dd-mmm-yyyy" ForeColor="gray"></asp:TextBox>
                                <asp:RequiredFieldValidator Font-Size="Large" ID="RequiredFieldValidator6" runat="server" ControlToValidate="DOB_TB" Display="Dynamic" ErrorMessage="Please enter Date of Birth" ForeColor="Red">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="table-data">
                                <svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-phone" fill="gray" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" d="M11 1H5a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1zM5 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H5z"/>
                                    <path fill-rule="evenodd" d="M8 14a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"/>
                                </svg>
                                <asp:TextBox ID="Phone_TB" ForeColor="gray" runat="server" CssClass="boxes" TextMode="Phone" placeholder="Enter your 10 digit Mobile Number"></asp:TextBox>
                                <asp:RequiredFieldValidator Font-Size="Large" ID="RequiredFieldValidator4" runat="server" ControlToValidate="Phone_TB" ErrorMessage="Please enter Mobile Number" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="Phone_TB" ErrorMessage="Enter exact Phone Number" ForeColor="Red" MaximumValue="9999999999" MinimumValue="1000000000" SetFocusOnError="True" Type="Double" Display="Dynamic">*</asp:RangeValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="table-data">
                                <svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-ui-radios" fill="gray" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M7 2.5a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-7a.5.5 0 0 1-.5-.5v-1zM0 12a3 3 0 1 1 6 0 3 3 0 0 1-6 0zm7-1.5a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-7a.5.5 0 0 1-.5-.5v-1z"/>
                                    <path fill-rule="evenodd" d="M7 5.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5zm0 8a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5zM3 1a3 3 0 1 0 0 6 3 3 0 0 0 0-6zm0 4.5a1.5 1.5 0 1 0 0-3 1.5 1.5 0 0 0 0 3z"/>
                                </svg>&nbsp;&nbsp;
                                <asp:Label runat="server" ID="Gen" Text="Gender : " Font-Size="Large" ForeColor="gray"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="radiob">
                                <asp:RadioButtonList ID="Gender" runat="server" BackColor="Transparent" ForeColor="gray" RepeatDirection="Horizontal" Width="70%">
                                    <asp:ListItem >&nbsp;Male</asp:ListItem>
                                    <asp:ListItem >&nbsp;Female</asp:ListItem>
                                    <asp:ListItem >&nbsp;Non-Binary</asp:ListItem>
                                </asp:RadioButtonList>
                                <asp:RequiredFieldValidator Font-Size="Large" ID="RequiredFieldValidator7" runat="server" ControlToValidate="Gender" Display="Dynamic" ErrorMessage="Select your Gender" ForeColor="Red">*</asp:RequiredFieldValidator>
                                </td>
                        </tr>
                        <tr>
                            <td class="table-data">
                                <svg width="2em" style="margin-bottom:30px;" height="2em" viewBox="0 0 16 16" class="bi bi-house" fill="gray" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" d="M2 13.5V7h1v6.5a.5.5 0 0 0 .5.5h9a.5.5 0 0 0 .5-.5V7h1v6.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5zm11-11V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z"/>
                                    <path fill-rule="evenodd" d="M7.293 1.5a1 1 0 0 1 1.414 0l6.647 6.646a.5.5 0 0 1-.708.708L8 2.207 1.354 8.854a.5.5 0 1 1-.708-.708L7.293 1.5z"/>
                                </svg>
                                <asp:TextBox ID="Address_TB" ForeColor="gray" CssClass="boxes" runat="server" placeholder="Address" TextMode="MultiLine" ></asp:TextBox>
                            </td>
                        </tr>

                        <tr>
                            <td class="table-data">
                                <svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-mailbox" fill="gray" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" d="M4 4a3 3 0 0 0-3 3v6h6V7a3 3 0 0 0-3-3zm0-1h8a4 4 0 0 1 4 4v6a1 1 0 0 1-1 1H1a1 1 0 0 1-1-1V7a4 4 0 0 1 4-4zm2.646 1A3.99 3.99 0 0 1 8 7v6h7V7a3 3 0 0 0-3-3H6.646z"/>
                                    <path fill-rule="evenodd" d="M11.793 8.5H9v-1h5a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.354-.146l-.853-.854z"/>
                                    <path d="M5 7c0 .552-.448 0-1 0s-1 .552-1 0a1 1 0 0 1 2 0z"/>
                                </svg>
                                <asp:TextBox ID="Pin" ForeColor="gray" runat="server" CssClass="boxes" placeholder="Pincode"></asp:TextBox>
                                <asp:RequiredFieldValidator Font-Size="Large" ID="RequiredFieldValidator9" runat="server" ControlToValidate="Pin" Display="Dynamic" ForeColor="Red" ErrorMessage="Please Enter Pincode">*</asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="Pin" Display="Dynamic" ErrorMessage="Not a vaild Pincode" ForeColor="Red" MaximumValue="999999" MinimumValue="100000">*</asp:RangeValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="table-data">
                                <svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-envelope" fill="gray" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V4zm2-1a1 1 0 0 0-1 1v.217l7 4.2 7-4.2V4a1 1 0 0 0-1-1H2zm13 2.383l-4.758 2.855L15 11.114v-5.73zm-.034 6.878L9.271 8.82 8 9.583 6.728 8.82l-5.694 3.44A1 1 0 0 0 2 13h12a1 1 0 0 0 .966-.739zM1 11.114l4.758-2.876L1 5.383v5.73z"/>
                                </svg>
                                <asp:TextBox ID="Email_TB" ForeColor="gray" CssClass="boxes" placeholder="Enter your E-Mail" runat="server" TextMode="Email"></asp:TextBox>
                                <asp:RequiredFieldValidator Font-Size="Large" ID="RequiredFieldValidator3" runat="server" ControlToValidate="Email_TB" Display="Dynamic" ErrorMessage="Please enter your E-Mail ID" ForeColor="Red">*</asp:RequiredFieldValidator>
                                <asp:Label ID="Invalid" runat="server" ForeColor="Red"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="table-data">
                                <svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-lock" fill="gray" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" d="M11.5 8h-7a1 1 0 0 0-1 1v5a1 1 0 0 0 1 1h7a1 1 0 0 0 1-1V9a1 1 0 0 0-1-1zm-7-1a2 2 0 0 0-2 2v5a2 2 0 0 0 2 2h7a2 2 0 0 0 2-2V9a2 2 0 0 0-2-2h-7zm0-3a3.5 3.5 0 1 1 7 0v3h-1V4a2.5 2.5 0 0 0-5 0v3h-1V4z"/>
                                </svg>
                                <asp:TextBox ID="Password_TB" ForeColor="gray" CssClass="boxes" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator Font-Size="Large" ID="RequiredFieldValidator2" runat="server" ControlToValidate="Password_TB" ErrorMessage="Enter your Password" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="table-data">
                                <svg width="2em" height="2em
                                    " viewBox="0 0 16 16" class="bi bi-lock-fill" fill="gray" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M2.5 9a2 2 0 0 1 2-2h7a2 2 0 0 1 2 2v5a2 2 0 0 1-2 2h-7a2 2 0 0 1-2-2V9z"/>
                                    <path fill-rule="evenodd" d="M4.5 4a3.5 3.5 0 1 1 7 0v3h-1V4a2.5 2.5 0 0 0-5 0v3h-1V4z"/>
                                </svg>
                                <asp:TextBox ID="PasswordCheck_TB" ForeColor="gray" runat="server" CssClass="boxes" placeholder="Re-Enter Password" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator Font-Size="Large" ID="RequiredFieldValidator5" runat="server" ControlToValidate="PasswordCheck_TB" ErrorMessage="Please Re-type the Password" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" Font-Size="Large" ControlToCompare="Password_TB" ControlToValidate="PasswordCheck_TB" Display="Dynamic" ErrorMessage="Password does not Match" ForeColor="Red" SetFocusOnError="True">*</asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="buttn">
                                
                                <asp:Button ID="Button5" runat="server" Text="Register" CssClass="btn" OnClick="Button5_Click"/>
                            </td>
                        </tr>
                        
                    </table>
                </div>
            </asp:Panel>
            
            <asp:Panel ID="updat" runat="server" Visible="false">
                <div id ="upd" runat="server">
                    <table id="tab" class="tables">
                        <tr>
                                <td class="hed" colspan="2">
                                    <asp:Label ID="Labe1" runat="server" ForeColor="DodgerBlue" Font-Size="XX-Large" Text="Update Panel"></asp:Label>
                                </td>
                            </tr>
                        <tr>
                                <td colspan="2">
                                    <svg id="icon-u" width="8em" height="8em" viewBox="0 0 16 16" class="bi bi-arrow-repeat" fill="gray" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M11.534 7h3.932a.25.25 0 0 1 .192.41l-1.966 2.36a.25.25 0 0 1-.384 0l-1.966-2.36a.25.25 0 0 1 .192-.41zm-11 2h3.932a.25.25 0 0 0 .192-.41L2.692 6.23a.25.25 0 0 0-.384 0L.342 8.59A.25.25 0 0 0 .534 9z"/>
                                        <path fill-rule="evenodd" d="M8 3c-1.552 0-2.94.707-3.857 1.818a.5.5 0 1 1-.771-.636A6.002 6.002 0 0 1 13.917 7H12.9A5.002 5.002 0 0 0 8 3zM3.1 9a5.002 5.002 0 0 0 8.757 2.182.5.5 0 1 1 .771.636A6.002 6.002 0 0 1 2.083 9H3.1z"/>
                                    </svg>
                                </td>
                            </tr>
                        <tr>
                            <td colspan="2" class="buttn">
                                <asp:button id="Butto34" runat="server" CssClass="btn" text="Exit" causesvalidation="false" OnClick="btnCancel_Click" />
                            </td>
                        </tr>
                        <tr>
                                <td class="new" colspan="2">
                                    <div>
                                        <i class="glyphicon glyphicon-envelope icon"></i>  
                                        <asp:TextBox ID="Username" runat="server" TextMode="Email" placeholder="Enter Email" CssClass="input-field" ToolTip="E-Mail" ForeColor="Gray"></asp:TextBox>
                                    </div>
                                </td>
                            </tr>
                        <tr>
                                <td class="val">
                                        <asp:Label ID="Label2" runat="server" Font-Bold="False" Font-Size="Large" ForeColor="Red"></asp:Label><br />
                                        <asp:HyperLink ID="HyperLink2" NavigateUrl="~/User_Registration.aspx" runat="server" Visible="False">Click here to Register</asp:HyperLink>
                                </td>
                                
                            </tr>
                        <tr>
                            <td class="buttn" colspan="2">
                                <asp:Button ID="Btn1" runat="server" CssClass="btn" Text="Go !" OnClick="Btn1_Click" />
                            </td>
                        </tr>
                    </table>
                </div>
            </asp:Panel>
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Panel ID="updat1" runat="server" Visible="false">
                <table class="tablestyle" runat="server">
                        <tr>
                            <td class="hed">
                                <asp:Label ID="Label34" runat="server" ForeColor="gray" Font-Size="XX-Large" Text="USER UPDATION"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <svg id="icon" width="8em" height="8em" viewBox="0 0 16 16" class="bi bi-arrow-repeat" fill="gray" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M11.534 7h3.932a.25.25 0 0 1 .192.41l-1.966 2.36a.25.25 0 0 1-.384 0l-1.966-2.36a.25.25 0 0 1 .192-.41zm-11 2h3.932a.25.25 0 0 0 .192-.41L2.692 6.23a.25.25 0 0 0-.384 0L.342 8.59A.25.25 0 0 0 .534 9z"/>
                                        <path fill-rule="evenodd" d="M8 3c-1.552 0-2.94.707-3.857 1.818a.5.5 0 1 1-.771-.636A6.002 6.002 0 0 1 13.917 7H12.9A5.002 5.002 0 0 0 8 3zM3.1 9a5.002 5.002 0 0 0 8.757 2.182.5.5 0 1 1 .771.636A6.002 6.002 0 0 1 2.083 9H3.1z"/>
                                </svg>
                            </td>
                        </tr>
                        <tr>
                            <td class="table-data">
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [User_Registration]"></asp:SqlDataSource>
                                <asp:Label ID="Suc" runat="server" ForeColor="Red" style="margin-right:auto; padding-top:10px; margin-left:auto;"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="buttn">
                                <asp:button id="Butn1" runat="server" CssClass="btn" text="Exit" OnClick="Butn1_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="table-data">
                                <svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-person-dash" fill="gray" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" d="M8 5a2 2 0 1 1-4 0 2 2 0 0 1 4 0zM6 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm6 5c0 1-1 1-1 1H1s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C9.516 10.68 8.289 10 6 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10zM11 7.5a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 0 1h-4a.5.5 0 0 1-.5-.5z"/>
                                </svg>
                                <asp:TextBox ID="FN" ForeColor="gray" runat="server" CssClass="boxes" placeholder="Name"></asp:TextBox>
                                <asp:RequiredFieldValidator Font-Size="Large" ID="RequiredFieldValidator10" runat="server" ControlToValidate="FN" Display="Dynamic" ErrorMessage="Enter your Name" ForeColor="Red" ValidationGroup="b">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="table-data">
                                <svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-person-dash-fill" fill="gray" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" d="M1 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H1zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm5-.5a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 0 1h-4a.5.5 0 0 1-.5-.5z"/>
                                </svg>
                                <asp:TextBox ID="FFN" ForeColor="gray" CssClass="boxes" runat="server" placeholder ="Father's Name"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="table-data">
                                <svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-calendar-date" fill="gray" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4H1z"/>
                                    <path d="M6.445 11.688V6.354h-.633A12.6 12.6 0 0 0 4.5 7.16v.695c.375-.257.969-.62 1.258-.777h.012v4.61h.675zm1.188-1.305c.047.64.594 1.406 1.703 1.406 1.258 0 2-1.066 2-2.871 0-1.934-.781-2.668-1.953-2.668-.926 0-1.797.672-1.797 1.809 0 1.16.824 1.77 1.676 1.77.746 0 1.23-.376 1.383-.79h.027c-.004 1.316-.461 2.164-1.305 2.164-.664 0-1.008-.45-1.05-.82h-.684zm2.953-2.317c0 .696-.559 1.18-1.184 1.18-.601 0-1.144-.383-1.144-1.2 0-.823.582-1.21 1.168-1.21.633 0 1.16.398 1.16 1.23z"/>
                                </svg>
                                <asp:TextBox ID="DATEE" CssClass="boxes" runat="server" placeholder="dd-mmm-yyyy" ForeColor="gray" TextMode="DateTime"></asp:TextBox>
                                <asp:RequiredFieldValidator Font-Size="Large" ID="RequiredFieldValidator11" runat="server" ControlToValidate="DATEE" Display="Dynamic" ErrorMessage="Please enter Date of Birth" ForeColor="Red" ValidationGroup="b">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="table-data">
                                <svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-phone" fill="gray" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" d="M11 1H5a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1zM5 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H5z"/>
                                    <path fill-rule="evenodd" d="M8 14a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"/>
                                </svg>
                                <asp:TextBox ID="PHON" ForeColor="gray" runat="server" CssClass="boxes" placeholder="Enter your 10 digit Mobile Number" TextMode="Number"></asp:TextBox>
                                <asp:RequiredFieldValidator Font-Size="Large" ID="RequiredFieldValidator12" runat="server" ControlToValidate="PHON" ErrorMessage="Please enter Mobile Number" ForeColor="Red" Display="Dynamic" ValidationGroup="b">*</asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="PHON" ErrorMessage="Enter exact Phone Number" ForeColor="Red" MaximumValue="9999999999" MinimumValue="1000000000" SetFocusOnError="True" Type="Double" Display="Dynamic" ValidationGroup="b">*</asp:RangeValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="table-data">
                                <svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-ui-radios" fill="gray" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M7 2.5a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-7a.5.5 0 0 1-.5-.5v-1zM0 12a3 3 0 1 1 6 0 3 3 0 0 1-6 0zm7-1.5a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-7a.5.5 0 0 1-.5-.5v-1z"/>
                                    <path fill-rule="evenodd" d="M7 5.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5zm0 8a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5zM3 1a3 3 0 1 0 0 6 3 3 0 0 0 0-6zm0 4.5a1.5 1.5 0 1 0 0-3 1.5 1.5 0 0 0 0 3z"/>
                                </svg>&nbsp;&nbsp;
                                <asp:Label runat="server" ID="Label5" Text="Gender : " Font-Size="Large" ForeColor="gray"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="radiob">
                                <asp:RadioButtonList ID="GENDR" runat="server" BackColor="Transparent" ForeColor="gray" RepeatDirection="Horizontal" Width="70%">
                                    <asp:ListItem Value="Male">&nbsp;Male</asp:ListItem>
                                    <asp:ListItem Value="Female">&nbsp;Female</asp:ListItem>
                                    <asp:ListItem Value="Non-Binary">&nbsp;Non-Binary</asp:ListItem>
                                </asp:RadioButtonList>
                                <asp:RequiredFieldValidator Font-Size="Large" ID="RequiredFieldValidator13" runat="server" ControlToValidate="GENDR" Display="Dynamic" ErrorMessage="Select your Gender" ForeColor="Red">*</asp:RequiredFieldValidator>
                                </td>
                        </tr>
                        <tr>
                            <td class="table-data">
                                <svg width="2em" style="margin-bottom:30px;" height="2em" viewBox="0 0 16 16" class="bi bi-house" fill="gray" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" d="M2 13.5V7h1v6.5a.5.5 0 0 0 .5.5h9a.5.5 0 0 0 .5-.5V7h1v6.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5zm11-11V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z"/>
                                    <path fill-rule="evenodd" d="M7.293 1.5a1 1 0 0 1 1.414 0l6.647 6.646a.5.5 0 0 1-.708.708L8 2.207 1.354 8.854a.5.5 0 1 1-.708-.708L7.293 1.5z"/>
                                </svg>
                                <asp:TextBox ID="ADDR" ForeColor="gray" CssClass="boxes" runat="server" placeholder="Address" TextMode="MultiLine" ></asp:TextBox>
                            </td>
                        </tr>

                        <tr>
                            <td class="table-data">
                                <svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-mailbox" fill="gray" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" d="M4 4a3 3 0 0 0-3 3v6h6V7a3 3 0 0 0-3-3zm0-1h8a4 4 0 0 1 4 4v6a1 1 0 0 1-1 1H1a1 1 0 0 1-1-1V7a4 4 0 0 1 4-4zm2.646 1A3.99 3.99 0 0 1 8 7v6h7V7a3 3 0 0 0-3-3H6.646z"/>
                                    <path fill-rule="evenodd" d="M11.793 8.5H9v-1h5a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.354-.146l-.853-.854z"/>
                                    <path d="M5 7c0 .552-.448 0-1 0s-1 .552-1 0a1 1 0 0 1 2 0z"/>
                                </svg>
                                <asp:TextBox ID="PINCODE" ForeColor="gray" runat="server" CssClass="boxes" placeholder="Pincode" TextMode="Number" ></asp:TextBox>
                                <asp:RequiredFieldValidator Font-Size="Large" ID="RequiredFieldValidator14" runat="server" ControlToValidate="PINCODE" Display="Dynamic" ForeColor="Red" ErrorMessage="Please Enter Pincode" ValidationGroup="b">*</asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="RangeValidator4" runat="server" ControlToValidate="PINCODE" Display="Dynamic" ErrorMessage="Not a vaild Pincode" ForeColor="Red" MaximumValue="999999" MinimumValue="100000" ValidationGroup="b">*</asp:RangeValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="table-data">
                                <svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-envelope" fill="gray" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V4zm2-1a1 1 0 0 0-1 1v.217l7 4.2 7-4.2V4a1 1 0 0 0-1-1H2zm13 2.383l-4.758 2.855L15 11.114v-5.73zm-.034 6.878L9.271 8.82 8 9.583 6.728 8.82l-5.694 3.44A1 1 0 0 0 2 13h12a1 1 0 0 0 .966-.739zM1 11.114l4.758-2.876L1 5.383v5.73z"/>
                                </svg>
                                <asp:TextBox ID="EMIL" ForeColor="gray" CssClass="boxes" placeholder="Enter your E-Mail" runat="server" TextMode="Email"></asp:TextBox>
                                <asp:RequiredFieldValidator Font-Size="Large" ID="RequiredFieldValidator15" runat="server" ControlToValidate="EMIL" Display="Dynamic" ErrorMessage="Please enter your E-Mail ID" ForeColor="Red">*</asp:RequiredFieldValidator>
                                <asp:Label ID="Inv" runat="server" ForeColor="Red"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="table-data">
                                <svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-lock" fill="gray" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" d="M11.5 8h-7a1 1 0 0 0-1 1v5a1 1 0 0 0 1 1h7a1 1 0 0 0 1-1V9a1 1 0 0 0-1-1zm-7-1a2 2 0 0 0-2 2v5a2 2 0 0 0 2 2h7a2 2 0 0 0 2-2V9a2 2 0 0 0-2-2h-7zm0-3a3.5 3.5 0 1 1 7 0v3h-1V4a2.5 2.5 0 0 0-5 0v3h-1V4z"/>
                                </svg>
                                <asp:TextBox ID="PASSW" ForeColor="gray" CssClass="boxes" placeholder="Password" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator Font-Size="Large" ID="RequiredFieldValidator16" runat="server" ControlToValidate="PASSW" ErrorMessage="Enter your Password" ForeColor="Red" Display="Dynamic" ValidationGroup="b">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="buttn">
                                <asp:Button ID="Button2" runat="server" Text="Register" CssClass="btn" OnClick="Button2_Click"/>
                            </td>
                        </tr>
                        
                    </table>
            </asp:Panel>
            <asp:Panel ID="delet" runat="server" Visible="false">
                <div id="del" runat="server">
                    <table id="ta" class="tables">
                        <tr>
                                <td class="hed" colspan="2">
                                    <asp:Label ID="Lael4" runat="server" ForeColor="DodgerBlue" Font-Size="XX-Large" Text="Deletion"></asp:Label>
                                </td>
                            </tr>
                        <tr>
                                <td colspan="2">
                                    <svg width="8em" height="8em" viewBox="0 0 16 16" class="bi bi-trash" fill="gray" xmlns="http://www.w3.org/2000/svg">
                                      <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
                                      <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4L4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
                                    </svg>
                                </td>
                            </tr>
                        <tr>
                            <td colspan="2" class="buttn">
                                <asp:button id="Butto3" runat="server" CssClass="btn" text="Exit" causesvalidation="false" OnClick="btnCancel_Click" />
                            </td>
                        </tr>
                        <tr>
                                <td class="new" colspan="2">
                                    <div>
                                        <i class="glyphicon glyphicon-envelope icon"></i>  
                                        <asp:TextBox ID="Email2" runat="server" TextMode="Email" placeholder="Enter Email" CssClass="input-field" ToolTip="E-Mail" ForeColor="Gray"></asp:TextBox>
                                    </div>
                                </td>
                            </tr>
                        <tr>
                                <td class="val" colspan="2">
                                        <asp:Label ID="Lael6" runat="server" Font-Bold="False" Font-Size="Large" ForeColor="Red"></asp:Label><br />
                                        <asp:HyperLink ID="HyperLink1" NavigateUrl="~/User_Registration.aspx" runat="server" Visible="False">Click here to Register</asp:HyperLink>
                                </td>
                                
                            </tr>
                        <tr>
                            <td class="buttn" colspan="2">
                                <asp:Button ID="Buton4" runat="server" CssClass="btn" Text="Delete" OnClick="Buton4_Click"  />
                            </td>
                        </tr>
                    </table>
                </div> 
            </asp:Panel>
        </div>
    </div>
</asp:Content>

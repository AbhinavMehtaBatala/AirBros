<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact Us.aspx.cs" Inherits="AirBros.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .new{
            margin:auto;
        }
        .row{
            display:flex;
            flex-wrap:wrap;
            margin-right:-15px;
            margin-left:-15px;
        }
        .col, .col-1, .col-10, .col-11, .col-12, .col-2, .col-3, .col-4, .col-5, .col-6, .col-7, .col-8, .col-9, .col-auto, .col-lg, .col-lg-1, .col-lg-10, .col-lg-11, .col-lg-12, .col-lg-2, .col-lg-3, .col-lg-4, .col-lg-5, .col-lg-6, .col-lg-7, .col-lg-8, .col-lg-9, .col-lg-auto, .col-md, .col-md-1, .col-md-10, .col-md-11, .col-md-12, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9, .col-md-auto, .col-sm, .col-sm-1, .col-sm-10, .col-sm-11, .col-sm-12, .col-sm-2, .col-sm-3, .col-sm-4, .col-sm-5, .col-sm-6, .col-sm-7, .col-sm-8, .col-sm-9, .col-sm-auto, .col-xl, .col-xl-1, .col-xl-10, .col-xl-11, .col-xl-12, .col-xl-2, .col-xl-3, .col-xl-4, .col-xl-5, .col-xl-6, .col-xl-7, .col-xl-8, .col-xl-9, .col-xl-auto {
            position: relative;
            float: left;
            padding-right: 15px;
            padding-left: 15px;
        }
        @media (min-width: 576px){
        .col-sm-6{
            flex: 0 0 50%;
            width:50%;
                }
        }
        *, ::after, ::before{
            box-sizing:border-box;
        }
        div{
            display:block;
        }
        .mb-3, .my-3{
            margin-bottom: 1rem!important;
        }
        @media (min-width: 576px){
            .col-sm-3{
                flex:0 0 25%;
                max-width: 25%;
            }
        }
        @media (min-width: 576px){
            .col-sm-9{
                flex: 0 0 75%;
                max-width: 75%;
            }
        }
        .form-group{
            margin-bottom: 1rem;
            font-size: 14px;
            font-weight: 400;
            line-height: 1.6;
            color: #212529;
            text-align: left;
        }
        #txtFName, #txtEmail {
            overflow:visible;
        }
        #MsgTextBox{
            resize:none;
        }
        
        .btn-danger{
            color: #fff;
            background-color: #dc3545;
            border-color: #dc3545;
        }
        .btn:not(:disabled):not(.diabled){
            cursor:pointer;
        }
        .px-4{
            padding-left: 1.5rem!important;
            padding-right: 1.5rem!important;
        }
        .p-1{
            padding: .25rem!important;
        }
        #Button{
            white-space:pre;
            align-items:flex-start;
        }
    </style>
    <script type="text/javascript">
        function ContactValidate(id) {
            var btrue = true;
            var phone = $('#txtPhone').val(),
            intRegex = /[0-9 -()+]+$/;
            if ($('#txtFName').val() == "") {
                alert("Please enter your Name");
                btrue = false;
            }

            else if ((phone.length < 10) || (!intRegex.test(phone))) {
                alert('Please enter a valid phone number.');
                btrue = false;
            }
            else if ($('#MsgTextBox').val() == "") {
                alert("Please enter your comment or question in the Message box.");
                btrue = false;
            }
            if (btrue == true) {

                onsavecontactus(1);
            }
        }

        /*function onsavecontactus(id) {
     
            $.ajax({
                url: '/Common/ContactusEnquiry',
                type: 'POST',
                data: {
                    Name: $('#txtFName').val(),
                    Phone: $('#txtPhone').val(),
                    Email: $('#txtEmail').val(),
                    Message: $('#MsgTextBox').val()
                },
                success: function (msg) {
             
                    $('#txtFName').val("");
                    $('#txtPhone').val("");
                    $('#txtEmail').val("");
                    $('#MsgTextBox').val("");
                    if (msg == "true")
                    {
                        alert("Your request has been successfully submitted.");
                    }
                    else
                    {
                        alert("Your request has been failed please try after some times.");

                    }
             
                },
                error: function (msg) {
                    alert("error");
                   // $("#dvcontact").hide();
                }
            });

        }

 
        function isEmail(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode;
            if (charCode == 13) {
                return Process();
            }
            if ((charCode <= 33 || charCode <= 45)) {
                return false;
            }
            else if ((charCode >= 64 && charCode <= 90) || (charCode >= 97 && charCode <= 122)) {
                return true;
            }
        }
        function NumericOnly(event) {
            var key = [event.keyCode || event.which];
            var keychar = String.fromCharCode([event.keyCode || event.which]);
            keventychar = keychar.toLowerCase();
            checkString = "0123456789";
            if ((key == null) || (key == 0) || (key == 8) ||
        (key == 9) || (key == 13) || (key == 27)) {

                return event.returnValue = true;

            }
            else if (((checkString).indexOf(keychar) > -1)) {

                return event.returnValue = true;
            }
            else {
                return event.returnValue = false;
            }
        }
        function ignoreNumeric(event) {

            var key = [event.keyCode || event.which];

            if ((key > 64 && key < 91) || (key > 96 && key < 123) || (key == 32 || key == 08 || key == 09)) {


                return event.returnValue = true;
                //return true;
            }
            else {
                return event.returnValue = false;
                //return false;
            }
        }
         */
        
    </script>
    <h2>Contact Us</h2>
    <br />
    <div class ="row">
        <div class="site-main col-sm-6 alignleft">
            <div role="form">
                <div>
                    <div>
                        <div class="form-group">
                            <asp:TextBox ID="txtFName" placeholder="Your Full Name" CssClass="form-control text-capitalize" MaxLength="200" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFName" Display="Dynamic" ErrorMessage="*" Font-Size="Medium" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtEmail" placeholder="Email Address" CssClass="form-control" MaxLength="200" runat="server" TextMode="Email"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="*" Font-Size="Medium" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </div>

                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" placeholder="Mobile or Phone Number" MaxLength="10" TextMode="Phone"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPhone" Display="Dynamic" ErrorMessage="*" Font-Size="Medium" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="MsgTextBox" CssClass="form-control" MaxLength="400" placeholder="Message" runat="server" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="MsgTextBox" Display="Dynamic" ErrorMessage="*" Font-Size="Medium" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <asp:Button ID="Button" OnClientClick="return ContactValidate()" CssClass="btn btn-danger p-1 px-4" Width="100px" runat="server" Text="Send Now" OnClick="Button_Click" />
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-6">
            <div class="row mb-3">
                <div class="col-sm-3">
                    <b>Address : </b>
                </div>
                <div class="col-sm-9">
                Mehta Computers, Shop No. 2, First Floor, Prakash Market 
                <br />
                Batala, Punjab 143505
                </div>
            </div>
            <div class="row mb-3">
                <div class="col-sm-3">
                    <b>Phone No :</b>
                </div>
                <div class="col-sm-9">
                           7589794003
                </div>
            </div>
            <div class="row">
                <div class="col-sm-3">
                    <b>Email : </b>
                </div>
                <div class="col-sm-9">
                      abhinavmeht1@gmail.com
                </div>
            </div>
        </div>
    </div>
    <div class="new">
        <asp:Label ID="Success" runat="server"></asp:Label>
    </div>
</asp:Content>

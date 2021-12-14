<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AirBros._Default" %>
<%@ MasterType VirtualPath="~/Site.Master" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script src="Scripts/jquery-3.4.1.js"></script>
    <script src="Scripts/jquery-ui-1.12.1/jquery-ui.js"></script>
    <link rel="stylesheet" href="Scripts/jquery-ui-1.12.1/jquery-ui.css" />
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.aspnetcdn.com/ajax/jquery/jquery-1.8.0.js"></script>
    <script src="https://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.22/jquery-ui.js"></script>
    <!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=PT+Sans:400" rel="stylesheet">

	<!-- Bootstrap -->
	<link type="text/css" rel="stylesheet" href="Content/bootstrap.min.css" />

	<!-- Custom stlylesheet -->
	<link type="text/css" rel="stylesheet" href="Content/Style.css" />
   
    <script>
        $(document).ready(function () {
            $('#txtFrom').autocomplete({
                source: 'CityHandler.ashx'
            });
            $('#txtTo').autocomplete({
                source: 'CityHandler.ashx'
            });
        });
    </script>
    <style>
        @media (min-width:768px){
            .search{
                width:70%;
            }
        }
        @media (min-width:992px){
            .search{
                width:70%;
            }
        }
        @media (min-width:1200px){
            .search{
                width:70%;
            }
        }
        @media (min-width:1500px){
            .search{
                width:70%;
            }
        }
        .search{
            width: 80%;
            height: 300px;
            align-content:center;
            background-image:linear-gradient(rgba(227,232,238),rgba(236,240,242));
            margin:auto;
            border-radius:8px;
            display:flex;
        }
        .tab{
            width:25%;
            height:50%;
            margin:20px;
            column-span:all;
            display:table-column;
        }
        .Table
        {
            display: table;
            padding: 30px;
            margin:auto;
            width:100%;
            height:80%;
            
        }
        .Title
        {
            display: table-caption;
            text-align: center;
            font-family:Calibri;
            color:dimgray;
            font-size:x-large;
            padding-top:10px;
        }
        .Row
        {
            display: table-row;
            padding:20px;
            
        }
        .Row > div
        {
            display: table-cell;
            border: transparent;
            border-width:0;
            padding:10px;
            width:20%;
        }
        .flex-container{
            display:flex;
            justify-content:space-around;
            
        }
        .indiv{
            background-color: white;
            width: 400px;
            height: 580px;
            margin:15px;
            text-align:center;
            box-shadow: 0 4px 8px 0 rgba(0,0,0,0.5);
        }
        .butn{
            width:90%;
            background-color: dodgerblue;
            border-radius: 3px;
            border-color:transparent;
            height:50px;
            
        }
        .butn:hover, .butn:focus{
            opacity: 0.9;
            box-shadow: 0 1px 1px 0 rgba(0,0,0,0.5);
        }
        .butn:not(:disabled):not(.diabled){
            cursor:pointer;
        }
        .faq{
            background-color:#dfe1ff;
            padding:20px;
            border-radius:7px;
        }
        .custom{
            background:no-repeat center center fixed #000;
            background-size:cover;
            width:100%;
            height: auto;
        }
        .cst{
            height:40%;
            display:flex;
            text-align:center;
            color: rgba(255,255,255,1);
            position:relative;
            font-size: 24px;
        }
        .centered{
            position:absolute;
            top:50%;
            left:50%;
            transform:translate(-50%, -50%);
        }
        .cst1{
            height:60%;
            display:flex;
            padding:20px;
        }
        .fltHpyFilter {
            width: 285px;
            float: left;
        }
        .brdRd8 {
            border-radius: 8px;
        }
        .whiteBg {
            background: #fff;
        }
        .stickyHpy {
            position: sticky;
            top: 0;
            z-index: 9;
        }
        .pad20 {
            padding: 20px;
        }
        .fltHpyResults
        {
            width: 895px;
            float:right;
        }
        .listy
        {
            list-style-type : "\2708";
            color: royalblue;
            font-size:16px;
            text-align:left;
            line-height: 1.8;
        }
        /*For Hidden Panel*/
        .table_hidden
        {
            box-shadow:0 4px 8px 0 rgba(0,0,0,0.2);
            margin:20px;
            padding: 16px;
            text-align:center;
            background-color: #f1f1f1;
            border-radius:5px;
        }
        .int_div
        {
            display: inline-block;
            height: 100px;
        }
    </style>
    <div class="search">
        <div class="Table">
            <div class="Title">
                <p>Search</p>
            </div>
            <div class="Row">
                <div>
                    <asp:TextBox ID="txtFrom" placeholder="From" runat="server" CssClass="form-control" ClientIDMode="Static" ValidationGroup="abc"></asp:TextBox>
                    <div style="padding-top:50px;">
                        <asp:Button ID="Button1" CssClass="butn" runat="server" Text="Go !" ForeColor="White" Font-Size="Large" OnClick="Button1_Click" ValidationGroup="abc" />
                    </div>
                </div>
                <div>
                    <asp:TextBox ID="txtTo" runat="server" placeholder="To" ClientIDMode="Static" CssClass="form-control" ValidationGroup="abc"></asp:TextBox>
                </div>
                <div>
                    <asp:Button ID="Button3" runat="server" CssClass="form-control" OnClick="Button3_Click" Text="Departure" BackColor="White" ValidationGroup="abc" />
                    <asp:Panel runat="server" ID="cal1" Visible="false">
                        <asp:Calendar ID="Calendar1" runat="server" OnDayRender="Calendar1_DayRender" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Arial Narrow" Font-Size="9pt" ForeColor="Black" Height="120px" NextPrevFormat="FullMonth" Width="300px" OnSelectionChanged="Calendar1_SelectionChanged" CellPadding="1" ShowGridLines="True" FirstDayOfWeek="Monday">
                            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="DodgerBlue" />
                            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#66FFFF" ForeColor="White" />
                            <TitleStyle BackColor="#66CCFF" BorderColor="Transparent" BorderWidth="3px" Font-Bold="True" Font-Size="12pt" ForeColor="#99FFCC" />
                            <TodayDayStyle BackColor="#CCCCCC" />
                        </asp:Calendar>
                    </asp:Panel>                                       
                </div>
                
                <div>
                    <asp:Button ID="Button2" CssClass="form-control" runat="server" Text="Arrival" BackColor="White" OnClick="Button2_Click" ValidationGroup="abc" />
                    <asp:Panel runat="server" ID="cal2" Visible="false">
                        <asp:Calendar ID="Calendar2" runat="server" OnDayRender="Calendar2_DayRender" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Arial Narrow" Font-Size="9pt" ForeColor="Black" Height="120px" NextPrevFormat="FullMonth" Width="300px" OnSelectionChanged="Calendar2_SelectionChanged" CellPadding="1" ShowGridLines="True" FirstDayOfWeek="Monday">
                            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="DodgerBlue" />
                            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#66FFFF" ForeColor="White" />
                            <TitleStyle BackColor="#66CCFF" BorderColor="Transparent" BorderWidth="3px" Font-Bold="True" Font-Size="12pt" ForeColor="#99FFCC" />
                            <TodayDayStyle BackColor="#CCCCCC" />
                        </asp:Calendar>
                    </asp:Panel>
                </div>
                <div>
                    <asp:Label ID="Label1" runat="server" Text="Passengers : "></asp:Label>
                    <asp:DropDownList ID="DropDownList1" runat="server" Font-Bold="True">
                        <asp:ListItem Value="1"></asp:ListItem>
                        <asp:ListItem Value="2"></asp:ListItem>
                        <asp:ListItem Value="3"></asp:ListItem>
                        <asp:ListItem Value="4"></asp:ListItem>
                        <asp:ListItem Value="5"></asp:ListItem>
                        <asp:ListItem Value="6"></asp:ListItem>
                        <asp:ListItem Value="7"></asp:ListItem>
                        <asp:ListItem Value="8"></asp:ListItem>
                        <asp:ListItem Value="9"></asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
        </div>
    </div>
    <br />
    <br />
    <asp:Panel ID="One" runat="server">
        <div class="flex-container">
            <div class="indiv">
                <div class="cst">
                    <asp:Image ID="img" ImageUrl="~/Images/cards/newyork.jpg" runat="server" AlternateText="New York" CssClass="custom" />
                    <div class="centered">NEW YORK</div>
                </div>
                <div class="cst1">
                    <ul class = "listy">
                        <li>&nbsp; <a href="https://www.centralparknyc.org/">Central Park</a></li>
                        <li>&nbsp; <a href="https://www.nps.gov/stli/index.htm">Statue of Liberty</a></li>
                        <li>&nbsp; <a href="https://www.timessquarenyc.org/">Times Square</a></li>
                        <li>&nbsp; <a href="https://www.esbnyc.com/Empire">State Building</a></li>
                        <li>&nbsp; <a href="https://www.metmuseum.org/">The Metropolitan Museum of Art</a></li>
                        <li>&nbsp; <a href="http://www.nyc.gov/html/dot/html/infrastructure/brooklyn-bridge.shtml">Brooklyn Bridge</a></li>
                        <li>&nbsp; <a href="https://www.thehighline.org/">The High Line</a></li>
                    </ul>
                </div>
            </div>
            <div class="indiv">
                <div class="cst">
                    <asp:Image ID="Image1" ImageUrl="~/Images/cards/amritsar.jpg" runat="server"  AlternateText="Amritsar" CssClass="custom" />
                    <div class="centered">AMRITSAR</div>
                </div>
                <div class="cst1">
                    <ul class = "listy">
                        <li>&nbsp;<a href="http://sgpc.net/sri-harmandir-sahib/">Sri Harimandir Sahib</a></li>
                        <li>&nbsp;<a href="https://www.tripadvisor.in/Attraction_Review-g303884-d499036-Reviews-Jallianwala_Bagh-Amritsar_Amritsar_District_Punjab.html">Jallianwala Bagh</a></li>
                        <li>&nbsp;<a href="http://www.partitionmuseum.org/">Partition Museum</a></li>
                        <li>&nbsp;<a href="https://en.wikipedia.org/wiki/Wagah-Attari_border_ceremony">Attari Wagah Border</a></li>
                        <li>&nbsp;<a href="http://www.saddapind.co.in/">Saada Pind</a></li>
                        <li>&nbsp;<a href="http://www.fortgobindgarh.com/">Gobindgarh Fort</a></li>
                        <li>&nbsp;<a href="https://en.wikipedia.org/wiki/Bhagwan_Valmiki_Tirath_Sthal">Bhagwan Valmiki Tirath Sthal</a></li>
                    </ul>
                </div>
            </div>
            <div class="indiv">
                <div class="cst">
                    <asp:Image ID="Image2" ImageUrl="~/Images/cards/delhi.jpg" runat="server" CssClass="custom" AlternateText="Delhi" />
                    <div class="centered">DELHI</div>
                </div>
                <div class="cst1">
                    <ul class = "listy">
                        <li>&nbsp;<a href="http://www.delhitourism.gov.in/delhitourism/tourist_place/india_gate.jsp">India Gate</a></li>
                        <li>&nbsp;<a href="http://asi.nic.in/">Red Fort</a></li>
                        <li>&nbsp;<a href="http://www.delhitourism.gov.in/delhitourism/tourist_place/qutab_minar.jsp">Qutub Minar</a></li>
                        <li>&nbsp;<a href="http://www.delhitourism.gov.in/delhitourism/tourist_place/akshardham_temple.jsp">Akshardham Temple</a></li>
                        <li>&nbsp;<a href="http://www.delhitourism.gov.in/delhitourism/tourist_place/humayun_tomb.jsp">Humayun Tomb</a></li>
                        <li>&nbsp;<a href="http://www.delhitourism.gov.in/delhitourism/tourist_place/bahai_temple.jsp">Lotus Temple</a></li>
                        <li>&nbsp;<a href="http://www.delhitourism.gov.in/delhitourism/tourist_place/dilli_haat.jsp">Dilli Haat</a></li>
                    </ul>

                </div>
            </div>
        </div>
        <div class="flex-container">
            <div class="indiv">
                <div class="cst">
                    <asp:Image ID="Image3" ImageUrl="~/Images/cards/melbourne.jpg" runat="server" CssClass="custom" AlternateText="Melbourne" />
                <div class="centered">MELBOURNE</div>
                </div>
                <div class="cst1">
                    <ul class = "listy">
                        <li>&nbsp; <a href="https://www.ngv.vic.gov.au/">National Gallery of Victoria</a></li>
                        <li>&nbsp; <a href="https://www.zoo.org.au/melbourne">Melbourne Zoo</a></li>
                        <li>&nbsp; <a href="http://www.puffingbilly.com.au/">Puffing Billy Railway</a></li>
                        <li>&nbsp; <a href="https://www.rbg.vic.gov.au/">Royal Botanic Gardens</a></li>
                        <li>&nbsp; <a href="http://www.fedsquare.com/">Federation Square</a></li>
                        <li>&nbsp; <a href="http://museumvictoria.com.au/melbournemuseum/">Melbourne Museum and Royal Exhibition Building</a></li>
                        <li>&nbsp; <a href="https://fedsquare.com/">Fed Square</a></li>
                    </ul>
                </div>
            </div>
            <div class="indiv">
                <div class="cst">
                    <asp:Image ID="Image4" ImageUrl="~/Images/cards/london.jpg" runat="server" CssClass="custom" AlternateText="London" />
                    <div class="centered">LONDON</div>
                </div>
                <div class="cst1">
                    <ul class = "listy">
                        <li>&nbsp; <a href="https://www.britishmuseum.org/">The British Museum</a></li>
                        <li>&nbsp; <a href="https://www.hrp.org.uk/tower-of-london/">Tower of London</a></li>
                        <li>&nbsp; <a href="https://www.parliament.uk/bigben">Big Ben</a></li>
                        <li>&nbsp; <a href="https://www.londoneye.com/">London Eye</a></li>
                        <li>&nbsp; <a href="https://www.royalcollection.org.uk/visit/the-state-rooms-buckingham-palace">Buckingham Palace</a></li>
                        <li>&nbsp; <a href="https://www.stpauls.co.uk/">St. Paul's Cathedral</a></li>
                        <li>&nbsp; <a href="http://www.towerbridge.org.uk/">Tower Bridge</a></li>
                    </ul>
                </div>
            </div>
            <div class="indiv">
                <div class="cst">
                    <asp:Image ID="Image5" ImageUrl="~/Images/cards/moscow.jpg" runat="server" CssClass="custom" AlternateText="Moscow" />
                    <div class="centered">MOSCOW</div>
                </div>
                <div class="cst1">
                    <ul class = "listy">
                        <li>&nbsp; <a href="https://um.mos.ru/places/100676/">Red Square</a></li>
                        <li>&nbsp; <a href="https://www.kreml.ru/">The Moscow Kremlin</a></li>
                        <li>&nbsp; <a href="https://shm.ru/museum/hvb/">St. Basil's Cathedral</a></li>
                        <li>&nbsp; <a href="https://www.bolshoi.ru/">Bolshoi Theatre</a></li>
                        <li>&nbsp; <a href="https://www.tretyakovgallery.ru/">The State Tretyakov Gallery</a></li>
                        <li>&nbsp; <a href="https://park-gorkogo.com/">Gorky Central Park of Culture and Leisure</a></li>
                        <li>&nbsp; <a href="https://en.wikipedia.org/wiki/Arbat_Street">Arbat Street</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="flex-container">
            <div class="indiv">
                <div class="cst">
                    <asp:Image ID="Image6" ImageUrl="~/Images/cards/mumbai.jpg" runat="server" CssClass="custom" AlternateText="Mumbai" />
                    <div class="centered">MUMBAI</div>
                </div>
                <div class="cst1">
                    <ul class = "listy">
                        <li>&nbsp; <a href="https://mumbaicity.gov.in/tourist-place/gateway-of-india/">Gateway Of India Mumbai</a></li>
                        <li>&nbsp; <a href="https://www.maharashtratourism.gov.in/treasures/cave/elephanta-cave">Elephanta Caves</a></li>
                        <li>&nbsp; <a href="https://en.wikipedia.org/wiki/Kanheri_Caves">Kanheri Caves</a></li>
                        <li>&nbsp; <a href="http://www.hajialidargah.in/">Haji Ali Dargah</a></li>
                        <li>&nbsp; <a href="http://csmvs.in/">Chhatrapati Shivaji Maharaj Vastu Sangrahalaya</a></li>
                        <li>&nbsp; <a href="https://en.wikipedia.org/wiki/Chhatrapati_Shivaji_Terminus">Chhatrapati Shivaji Maharaj Terminus</a></li>
                        <li>&nbsp; <a href="https://en.wikipedia.org/wiki/Marine_Drive,_Mumbai">Marine Drive</a></li>
                    </ul>
                </div>
            </div>
            <div class="indiv">
                <div class="cst">
                    <asp:Image ID="Image7" ImageUrl="~/Images/cards/frankfurt.jpg" runat="server" CssClass="custom" />
                    <div class="centered">FRANKFURT</div>
                </div>
                <div class="cst1">
                    <ul class = "listy">
                        <li>&nbsp; <a href="https://www.frankfurt-tourismus.de/en/Media/Attractions/Buildings/Roemer-City-Hall">Römer</a></li>
                        <li>&nbsp; <a href="https://www.frankfurt-tourismus.de/en/Media/Attractions/Parks/Botanical-Garden-Frankfurt-Palmengarten">Palmengarten</a></li>
                        <li>&nbsp; <a href="https://www.staedelmuseum.de/en">Städel Museum</a></li>
                        <li>&nbsp; <a href="https://www.goethehaus-frankfurt.de/goethe-house">Goethe House</a></li>
                        <li>&nbsp; <a href="http://www.dom-frankfurt.de/">Frankfurt Cathedral</a></li>
                        <li>&nbsp; <a href="http://museumsufer-frankfurt.net/">Museumsufer</a></li>
                        <li>&nbsp; <a href="https://www.alteoper.de/">Alte Oper</a></li>
                    </ul>
                </div>
            </div>
            <div class="indiv">
                <div class="cst">
                    <asp:Image ID="Image8" ImageUrl="~/Images/cards/shanghai.jpg" runat="server" CssClass="custom" AlternateText="Shanghai" />
                    <div class="centered">SHANGHAI</div>
                </div>
                <div class="cst1">
                    <ul class = "listy">
                        <li>&nbsp; <a href="https://www.shanghaidisneyresort.com/">Shanghai Disneyland Park</a></li>
                        <li>&nbsp; <a href="https://www.marcotogni.it/tianzifang/">Tianzifang</a></li>
                        <li>&nbsp; <a href="http://www.jinmao88.com/sc/index.php">Jin Mao Tower</a></li>
                        <li>&nbsp; <a href="https://en.wikipedia.org/wiki/Nanjing_Road">Nanjing Road</a></li>
                        <li>&nbsp; <a href="http://www.yugarden.com.cn/">Yu Garden</a></li>
                        <li>&nbsp; <a href="https://en.wikipedia.org/wiki/The_Bund">The Bund</a></li>
                        <li>&nbsp; <a href="http://www.swfc-shanghai.com/">Shanghai World Financial Center</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </asp:Panel>
    <asp:Panel ID="Hidden" runat="server">
        <div class="flex-container" style="margin-bottom:10px;">
            <asp:DataList ID="DataList1" runat="server" CellPadding="4" ForeColor="#333333">
                <ItemTemplate>
                        <div class="table_hidden">
                        <!--<div class="int_div">
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Id") %>'></asp:Label>&nbsp;
                            </div>-->
                            <div class="int_div">
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("From") %>'></asp:Label>
                            </div>
                            <div class="int_div">
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("To") %>'></asp:Label>
                            </div>
                            <div class="int_div">
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("Departure") %>'></asp:Label>
                            </div>
                            <div class="int_div">
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("Arrival") %>'></asp:Label>
                            </div>
                            <div class="int_div">
                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("Airline") %>'></asp:Label>
                            </div>
                            <div class="int_div">
                                <asp:Label ID="Label8" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                            </div>
                            <div class="int_div">
                                <asp:Button ID="Book" Text="Book Now!" runat="server" OnClick="BookTicket" />
                            </div>
                        </div>
                </ItemTemplate>
                <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            </asp:DataList>  
        </div>
    </asp:Panel>
    <asp:Panel ID="Two" runat="server">
        <div>
            <div class="faq">
                <div style="padding-bottom:20px;">
                    <h2>Frequently Asked Questions</h2>
                </div>
                <div>
                    <div>
                        <p><strong>What are the advantages of online flight booking?</strong></p>
                    </div>
                    <div>
                        <p>Through online air ticket booking you can easily compare prices of multiple airlines to get your air tickets at lowest rates. Also, it is easy to do <a href="Default.aspx">online flight booking</a> as multiple payment options are available on websites like Airbros.</p>
                    </div>
                </div>
                <div>
                    <div>
                        <p><strong>When should I book to get best flight ticket prices?</strong></p>
                    </div>
                    <div>
                        <p>For best flight ticket prices and flight ticket offers, it is recommended to book at least 3 to 4 weeks in advance for domestic air tickets. For international flight ticket it is recommended to book at least 7 to 8 weeks in advance, so that you can get the best flight ticket prices.</p>
                    </div>
                </div>
                <div>
                    <div>
                        <p><strong>How can I book flight tickets online?</strong></p>
                    </div>
                    <div>
                        <p>With the help of AirBros, you can easily book both domestic flight tickets and international air tickets in simple steps within a few seconds.</p>
                    </div>
                </div>
                <div>
                    <div>
                        <p><strong>What are some of the popular flight routes?</strong></p>
                    </div>
                    <div>
                        <p>Some of the popular domestic flight routes are:</p>
                        <ol type="1">
                            <li> Delhi to Mumbai Flights</li>
                            <li> Delhi to Bangalore Flights</li>
                            <li> Mumbai to Bangalore Flights</li>
                            <li> Pune to Delhi Flights</li>
                            <li> Delhi to Goa Flights</li>
                        </ol>
                        <p>Some of the popular international flight routes are:</p>
                        <ol type="1">
                            <li>Delhi to Dubai Flights</li>
                            <li>Kolkata to Bangkok Flights</li>
                            <li>Mumbai to Hong Kong Flights</li>
                            <li>Delhi to Bangkok Flights</li>
                            <li>Delhi to Singapore Flights</li>
                        </ol>
                    </div>
                </div>
                <div>
                    <div>
                        <p><strong>Which are the popular airlines for air travel?</strong></p>
                    </div>
                    <div>
                        <p>Some of the popular airlines for domestic travel are:</p>
                        <ol type="1">
                            <li>Indigo Airlines</li>
                            <li>Air India Airlines</li>
                            <li>SpiceJet Airlines</li>
                            <li>GoAir Airlines</li>
                            <li>AirAsia Airlines</li>
                        </ol>
                        <p>Some of the popular airlines for international travel are:</p>
                        <ol type="1">
                            <li>Emirates Airlines</li>
                            <li>Singapore Airlines</li>
                            <li>Thai Airlines</li>
                            <li>Lufthansa Airlines</li>
                            <li>Qatar Airways</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
    </asp:Panel>
</asp:Content>
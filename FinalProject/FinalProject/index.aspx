﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="FinalProject.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="/CSS/index.css"/>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300|Lora|Josefin+Sans|Source+Sans+Pro|Open+Sans|Roboto' rel='stylesheet' type='text/css'/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script type="text/javascript" src="/JS/index.js"></script>

    <title>Above Treeline</title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="mainContent">
            <div id="menuBar">
                <!--For mockup purposes-->
                <img id="logo" src="/Assets/workingLogo.png" />
                <ul id="navContent">
                    <li><a href="index.aspx">Home</a></li>
                    <li><a href="climbing.aspx">Climbing</a></li>
                    <li><a href="hiking.aspx">Hiking</a></li>
                    <li><a href="apparel.aspx">Apparel</a></li>
                    <li id="signIn">  <!--This can be changed to an ASP method so that it shows your name or something when you're logged in -->
                        <a href="#"><asp:Label ID="lblSignInUsername" runat="server" Text="Sign In &#x25BC;"></asp:Label></a>
                        <div id="signInContent" runat="server">
                            <asp:Panel ID="pnlSignIn" runat="server">
                                <br />
                                <asp:TextBox ID="txtUsername" runat="server" Placeholder="Username" CssClass="signInForm"></asp:TextBox>
                                <br />
                                <asp:TextBox ID="txtPassword" runat="server" Placeholder="Password" TextMode="Password" CssClass="signInForm"></asp:TextBox>
                                <br />
                                <asp:Button ID="btnSignIn" runat="server" Text="Sign In" CssClass="signInBtn" OnClick="btnSignIn_Click"/>
                                <br />
                                <asp:HyperLink ID="lnkRegister" runat="server" Text="Register" NavigateUrl="#"></asp:HyperLink>
                                <asp:HyperLink ID="lnkForgot" runat="server" Text="Forgot Password" NavigateUrl="#"></asp:HyperLink>
                                <asp:Label ID="lblInvalidCredentials" runat="server" Text="Username/Password combination was incorrect!" ForeColor="Red" Font-Size="Small"></asp:Label>
                                </asp:Panel>

                            <asp:Panel ID="pnlSignedInOptions" runat="server">
                                Hi, <asp:Label ID="lblFirstName" runat="server"></asp:Label>!
                                <br />
                                <br />
                                <asp:HyperLink ID="lnkMyAccount" runat="server" Text="My Account" NavigateUrl="#"></asp:HyperLink>
                                <asp:HyperLink ID="lnlSignOut" runat="server" Text="Sign Out" NavigateUrl="/index.aspx?action=logout"></asp:HyperLink>
                            </asp:Panel>                            
                        </div>
                    </li>
                    <li><a href="cart.aspx">Shopping Cart</a></li> 
                    <li><asp:TextBox runat="server" ID="txtSearchBar" Placeholder="Search" CssClass="searchBox"></asp:TextBox></li>
                </ul>
            </div>

            <div id="featuredProducts">
                <div id="top">
                    <div id="leftFeatured">
                        <asp:Image ID="imgLeftFeatured" runat="server" ImageUrl="/Assets/climber1.jpg" CssClass="leftFeaturedImg" />
                        <p id="leftFeaturedText"><a href="#">Featured Product 1</a></p>
                    </div>

                    <div id="rightFeatured">
                        <asp:Image ID="imgRightFeatured" runat="server" ImageUrl="/Assets/climber1.jpg" CssClass="rightFeaturedImg" />
                        <p id="rightFeaturedText"><a href="#">Featured Product 2</a></p>
                    </div>
                </div>
                
                <div id="bottom">
                    <div id="bottomOne">
                        <asp:Image ID="imgBottomOne" runat="server" ImageUrl="/Assets/greenlandscape.jpg" CssClass="bottomOneImg" />
                        <p id="bottomOneFeaturedText"><a href="#">Featured Product 3</a></p>
                    </div>

                    <div id="bottomTwo">
                        <asp:Image ID="imgBottomTwo" runat="server" ImageUrl="/Assets/greenlandscape.jpg" CssClass="bottomTwoImg" />
                        <p id="bottomTwoFeaturedText"><a href="#">Featured Product 4</a></p>
                    </div>

                    <div id="bottomThree">
                        <asp:Image ID="imgBottomThree" runat="server" ImageUrl="/Assets/greenlandscape.jpg" CssClass="bottomThreeImg" />
                        <p id="bottomThreeFeaturedText"><a href="#">Featured Product 5</a></p>
                    </div>

                </div>
            </div>

            <footer id="footer">
            <p>Footer information will go here</p>
            </footer>

        </div>

        

    </form>
</body>
</html>

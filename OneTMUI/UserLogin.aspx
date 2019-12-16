

<%@ Page Title="" Language="C#" MasterPageFile="~/OTM_Master.Master" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="OneTMUI.UserLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>        
        input[type=text], input[type=password], input[type=email] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        #RequiredFieldValidator2{
            margin-left:-161px;
        }

        .move{
                margin-left: -132px;
        }

        #lblPassowrd{
            margin-left:-129px;
        }

        #lblRetypePassword{
           margin-left:-155px;
        }
        button:hover {
            opacity: 0.8;
        }
        
        .cancelbtn {
            width: auto;
            padding: 14px 20px;
            background-color: gray;
            color: white;
        }
      
        .imgcontainer {
            text-align: center;
            margin: 24px 0 12px 0;
            position: relative;
        }

        img.avatar {
            width: 20%;
            border-radius: 240px;
        }

        .container {
            /*padding: 16px;*/
         
            margin: -40px auto 0px auto;
        }

        span.psw {
            float: right;
            /*padding-top: 16px;*/
        }


        
        .modal-content {
            background-color: #fefefe;
            margin: 0 auto 0 auto; 
            border: 1px solid #888;
            width: 100%; 
            height: 100%;
            top: 0;
        }

        
        .close {
            position: absolute;
            right: 5px;
            top:5px;
            top: -40px;
            color: #000;
            font-size: 35px;
            font-weight: bold;
        }

            .close:hover,
            .close:focus {
                color: red;
                cursor: pointer;
            }

        .btnLogin {
            text-decoration:none;
            border: none;
            background-color: inherit;
            /*padding: 14px 28px;*/
            font-size: 16px;
            cursor: pointer;
            /*display: inline-block;*/
            /*color: darkgreen;*/
        }

        .btnSignup {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            cursor: pointer;
            width: auto;
            /*margin-left: 175px;*/
        }

        .btnLogin:hover {
            /*background: deeppink;*/
            text-decoration: none;
        }



        
        @media screen and (max-width: 430px) {
            span.psw {
                display: block;
                /*float: none;*/
            }
            /*.cancelbtn {
     width: 100%;
  }*/
            .modal-content {
                width: 100%;
            }
        }

        .titleLoggin {
            /*position: relative;*/
            /*left: 15px;
      top: 50px;*/
            color: deeppink;
            font-size: 35px;
            font-weight: bold;
            text-align: center;
            margin-top: -20px;
            margin-bottom:20px;
            /*float:none;*/
            /*margin: 0px auto;*/
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="modal-content">

            <div class="imgcontainer">

                <%--<a href="#">
                    <span class="close" title="Close Modal">&times;</span>
                </a>--%>
                <img src="Images/login1.jpg" alt="Avatar" class="avatar">
            </div>
            <div class="titleLoggin">
                <p>Sign Up Here!</p>

            </div>
            <div class="container">
                <div class="row">
                    <div class="col-md-6 offset-3">
                           <asp:Label ID="lblUserName" runat="server"><b>Username</b></asp:Label>
                    <asp:TextBox ID="txtUserName" placeholder="Enter Username" autocomplete="off" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ValidationName" runat="server" ErrorMessage="Please Enter Name" ControlToValidate="txtUserName" ForeColor="Red"></asp:RequiredFieldValidator>


                    <%--<asp:Label ID="Label1" runat="server" class="move"><b><br />Email</b></asp:Label>
                    <asp:TextBox ID="txtEmail" runat="server" placeholder="Enter Email" type="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ValidationEmail" runat="server" ErrorMessage="Please Enter Email" ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>--%>

                    <asp:Label ID="lblPassowrd" runat="server"><b><br />Password</b></asp:Label>
                    <asp:TextBox ID="txtPassword" placeholder="Enter Password" autocomplete="off" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Password" ControlToValidate="txtPassword" ForeColor="Red"></asp:RequiredFieldValidator>

                    <asp:Label ID="lblRetypePassword" runat="server"><b><br />Retype Password</b></asp:Label>
                    <asp:TextBox ID="txtRetypePassword" placeholder="Retype Password" autocomplete="off" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password is not match" ControlToValidate="txtRetypePassword" ControlToCompare="txtPassword" ForeColor="Red"></asp:CompareValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Retype Password" ControlToValidate="txtRetypePassword" ForeColor="Red"></asp:RequiredFieldValidator>
            
                    </div>
                     </div>


                <div class="row" style="position: relative;">
                    <div style="margin-right: 20px;" class="col-md-6 offset-3">
                        <asp:Button ID="btnSignup" CssClass="button btnSignup" runat="server" Text="Sign Up" OnClick="btnSignup_Click" />
                    </div>
                   <%-- <div>
                        <asp:Button ID="btnCancel" CssClass="cancelbtn" runat="server" Text="Cancel" OnClick="btnCancel_Click" />
                    </div>--%>
                </div>


                <div class="row">

                    <div class="col-md-6 offset-3">
                        <asp:CheckBox ID="chkRemember" runat="server" Style="float: none;" Checked="true" Text="Remember me" />
                    </div>
                </div>
                



                <div class="row" style="">
                    <div class="col-md-6 offset-3">
                    <div >
                        <asp:Label ID="lblNotMember" runat="server" Text="Not a member yet?"></asp:Label>
                        <div>
                            <a href="#" class="btnLogin"><span>Please Login!</span></a>
                        </div>
                    </div>

                    <div style="position: absolute; right: 0;">
                        <a href="#"><span class="psw" style="padding: 0; text-align: center;">Forgot Passowrd?</span></a>
                    </div>
                        </div>
                </div>

               

            </div>
            <br /><br />
        </div>
</asp:Content>


   


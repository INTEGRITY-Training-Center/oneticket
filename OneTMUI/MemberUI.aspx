
<%@ Page Title="" Language="C#" MasterPageFile="~/OTM_Master.Master" AutoEventWireup="true" CodeBehind="MemberUI.aspx.cs" Inherits="OneTMUI.MemberUI" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="containe-fluid">
          
            <div class="row" style="margin-top:10px; margin-left:15px; text-align:center;">
                <div class="col-md-6">
                    <h4>Member Create Form</h4>
                </div>                
            </div>
            <div class="row" style=" margin-left:15px">
                <div class="col-md-3">
                            <div class="row" style="width: 100%; display: block;">
                                <asp:Label ID="lblselectteam" runat="server" Text="Select Team:"></asp:Label>
                            </div>
                            <div class="row">
                                <asp:DropDownList ID="ddlselectteam" runat="server" CssClass="form-control" Height="38px" Width="95%"></asp:DropDownList>
                            </div>
                </div>
                <div class="col-md-3">
                            <div class="row" style="width: 100%; display: block;">
                                <asp:Label ID="lblmembername" runat="server" Text="Member Name:"></asp:Label>
                            </div>
                            <div class="row">
                                <asp:TextBox ID="txtmembername" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                </div>
            </div>
            <div class="row" style="margin-top:15px; margin-left:1px; width:50%;">
                <div class="col-md-3" >
                    <asp:Button ID="Btncreate" runat="server" Text="Create"  CssClass=" btn btn-secondary form-control " OnClick="Btncreate_Click" />
                </div>
            </div>
        </div>
    </asp:Content>


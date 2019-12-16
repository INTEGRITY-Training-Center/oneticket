
<%@ Page Title="" Language="C#" MasterPageFile="~/OTM_Master.Master" AutoEventWireup="true" CodeBehind="TeamUI.aspx.cs" Inherits="OneTMUI.TeamUI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
<div class="container-fluid">
            
            <div class="row" style="margin-top:10px;">
                <div class="col-md-4">
                    <h4>Team Create Form</h4>
                </div>                
            </div>
            <div class="row" style="margin-top:25px">
                <div class="col-md-3">
                    <asp:TextBox ID="txtTeamDescription" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="row" style="margin-top:15px;">
                <div class="col-md-1">
                    <asp:Button ID="btnTeamSave" runat="server" Text="Create" CssClass="btn btn-secondary btnStyle form-control" OnClick="btnTeamSave_Click" />
                </div>
            </div>
        </div>
    </asp:Content>

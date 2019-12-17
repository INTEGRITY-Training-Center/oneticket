
<%@ Page Title="" Language="C#" MasterPageFile="~/OTM_Master.Master" AutoEventWireup="true" CodeBehind="CreateTicket.aspx.cs" Inherits="OneTMUI.CreateTicket" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      
            
            <div class="row npri" style="margin-top:3em;">
                <div class="col-1">
                    <div style="display: block; text-align: right; padding-top: 5px;">
                        <asp:Label ID="lblTicketNo" runat="server" Text="Ticket No:"></asp:Label>
                    </div>
                </div>
                <div class="col-7">
                    <div class="row">
                        <div class="col-4">
                            <div class="row">                               
                                    <asp:TextBox ID="txtTicketNo" runat="server" CssClass="form-control"></asp:TextBox>                                                           
                            </div>
                        </div>
                        <div class="col-3">
                            <div>
                                <asp:Button ID="btnGenerateTicket" runat="server" Text="Generate Ticket" CssClass="form-control btn btn-primary" OnClick="btnGenerateTicket_Click1"/>
                            </div>
                        </div>
                        <div class="col-5">
                            <div class="row">
                                <div class="col-8">
                                    <div class="">
                                    <asp:TextBox ID="txtSearchTicket" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-4">
                                    <div class="row">
                                    <asp:Button ID="btnSearchTicket" runat="server" Text="Search" CssClass="form-control btn btn-secondary" OnClick="btnSearchTicket_Click"/>
                                        <%--<input type="button" id="btnSearchTicket" value="search" />--%>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row d-print-block" style="margin-top:25px;">
                <div class="col-1">
                    <div class="row" style="display: block; text-align: center;">
                        <asp:Label ID="lblIssue" runat="server" Text="Issue"></asp:Label>
                    </div>
                </div>
                <div class="col-7">
                    <div class="row">
                        <div class="col-12">
                            <div class="row">
                                <textarea id="TextArea1" cols="20" rows="15" style="width:100%;"></textarea>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-3" style="margin-left:30px;">
                    <div class="row">
                        <div class="col-12">

                            <div class="row">
                                <div style="width: 100%; display: block;">
                                    <asp:Label ID="lblCreatedDateTime" runat="server" Text="Created DateTime:" CssClass="control-label"></asp:Label>
                                </div>
                                <div>
                                    <asp:TextBox ID="txtCreatedDate" runat="server" TextMode="Date" CssClass="form-contol datetimeStyle datepicker"></asp:TextBox>
                                </div>
                              <%--  <div>
                                    <asp:TextBox ID="txtCreatedTime" runat="server" Width="60%" CssClass="form-contol datetimeStyle timepicker"></asp:TextBox>
                                </div>--%>
                            </div>
                            <div class="row" style="margin-top:10px;">
                                <div style="width: 100%; display: block;">
                                    <asp:Label ID="lblExpiredDateTime" runat="server" Text="Expired DateTime:" CssClass="control-label"></asp:Label>
                                </div>
                                <div>
                                    <asp:TextBox ID="txtExpiredDate" runat="server" TextMode="Date" CssClass="form-contol datetimeStyle datepicker"></asp:TextBox>
                                </div>
                               <%-- <div>
                                    <asp:TextBox ID="txtExpiredTime" runat="server" Width="60%" CssClass="form-contol datetimeStyle timepicker"></asp:TextBox>
                                </div>--%>
                            </div>
                            <div class="row" style="margin-top:10px;">
                                <div style="width: 100%; display: block;">
                                    <asp:Label ID="lblClosedDateTime" runat="server" Text="Closed DateTime:" CssClass="control-label"></asp:Label>
                                </div>
                                <div>
                                    <asp:TextBox ID="txtClosedDate" runat="server" TextMode="Date" CssClass="form-contol datetimeStyle datepicker"></asp:TextBox>
                                </div>
                               <%-- <div>
                                    <asp:TextBox ID="txtClosedTime" runat="server" Width="60%"  CssClass="form-contol datetimeStyle timepicker"></asp:TextBox>

                                </div>--%>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row" style="margin-top:30px;">
                <div class="offset-1 col-7">
                    <div class="row">
                        <div class="col-4">
                            <div class="row" style="width: 100%; display: block;">
                                <asp:Label ID="lblAssignTeam" runat="server" Text="Assign Team:"></asp:Label>
                            </div>
                            <div class="row">
                                <asp:DropDownList ID="ddlAssignTeam" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlAssignTeam_SelectedIndexChanged" runat="server" Width="95%"></asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="row" style="width: 100%; display: block;">
                                <asp:Label ID="lblTeamMember" runat="server" Text="Team Member:"></asp:Label>
                            </div>
                            <div class="row">
                                <asp:DropDownList ID="ddlTeamMember" CssClass="form-control" AutoPostBack="true" runat="server" Width="95%"></asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="row" style="width: 100%; display: block;">
                                <asp:Label ID="lblSecrityLevel" runat="server" Text="Severity Level:"></asp:Label>
                            </div>
                            <div class="row">
                                <asp:DropDownList ID="ddlSecurityLevel" CssClass="form-control" AutoPostBack="true" runat="server" Width="100%"></asp:DropDownList>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row" id="createTicketButtonRow" style="margin-top:20px;">
                <div class="offset-1 col-7">
                    <div class="row">
                        <div class="col-4">
                            <div class="row">
                                <div class="col-4">
                                    <div class="row">
                                    <asp:Button ID="btnCreate" runat="server" Text="Create" CssClass="btn btn-primary btnStyle form-control" />
                                    </div>
                                </div>
                                <div class="col-4 offset-1">
                                    <div class="row">
                                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn  btnStyle form-control btn-dark" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                </div>
                <div class="offset-1 col-7">
                    <div class="row">
                        <div class="col-6">
                            <div class="row">
                                <div class="col-4">
                                    <div class="row">
                                    <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn btn-secondary hideClass btnStyle form-control" />
                                    </div>
                                </div>
                                <div class="col-4">
                                    <div class="row">
                                    <asp:Button ID="btnClosed" runat="server" Text="Closed" CssClass="btn btn-secondary hideClass btnStyle form-control" />
                                    </div>
                                </div>
                                <div class="col-4">
                                    <div class="row">
                                    <asp:Button ID="btnCancelUpdate" runat="server" Text="Cancel" CssClass="btn btn-secondary hideClass btnStyle form-control" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                </div>
            </div>
            <%--<div class="row" id="changeButtonRow" style="margin-top:20px;">
                
                
            </div>--%>
       
       <script>
           $('.timepicker').timepicker({
               timeFormat: 'h:mm p',
               interval: 30,
               minTime: '8am',
               maxTime: '8pm',
               defaultTime: '10',
               startTime: '8:00',
               dynamic: true,
               dropdown: true,
               scrollbar: true
           });
    </script>

</asp:Content>



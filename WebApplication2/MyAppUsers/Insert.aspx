<%@ Page Title="MyAppUserInsert" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Insert.aspx.cs" Inherits="WebApplication2.MyAppUsers.Insert" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="WebApplication2.Models.MyAppUser" DefaultMode="Insert"
            InsertItemPosition="FirstItem" InsertMethod="InsertItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <InsertItemTemplate>
                <fieldset class="form-horizontal">
				<legend>Insert MyAppUser</legend>
		        <asp:ValidationSummary runat="server" CssClass="alert alert-danger" />
						    <asp:DynamicControl Mode="Insert" DataField="Id" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Email" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="EmailConfirmed" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="PasswordHash" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="SecurityStamp" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="PhoneNumber" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="PhoneNumberConfirmed" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="TwoFactorEnabled" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="LockoutEndDateUtc" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="LockoutEnabled" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="AccessFailedCount" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="UserName" runat="server" />
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <asp:Button runat="server" ID="InsertButton" CommandName="Insert" Text="Insert" CssClass="btn btn-primary" />
                            <asp:Button runat="server" ID="CancelButton" CommandName="Cancel" Text="Cancel" CausesValidation="false" CssClass="btn btn-default" />
                        </div>
					</div>
                </fieldset>
            </InsertItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>

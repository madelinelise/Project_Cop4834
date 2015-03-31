<%@ Page Title="MyAppUserEdit" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Edit.aspx.cs" Inherits="WebApplication2.MyAppUsers.Edit" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="WebApplication2.Models.MyAppUser" DefaultMode="Edit" DataKeyNames="Id"
            UpdateMethod="UpdateItem" SelectMethod="GetItem"
           OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the MyAppUser with Id <%: Request.QueryString["Id"] %>
            </EmptyDataTemplate>
            <EditItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Edit MyAppUser</legend>
					<asp:ValidationSummary runat="server" CssClass="alert alert-danger"  />                 
						    <asp:DynamicControl Mode="Edit" DataField="Id" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Email" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="EmailConfirmed" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="PasswordHash" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="SecurityStamp" runat="server" />
						   <asp:DynamicControl Mode="Edit" DataField="PhoneNumber" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="PhoneNumberConfirmed" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="TwoFactorEnabled" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="LockoutEndDateUtc" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="LockoutEnabled" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="AccessFailedCount" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="UserName" runat="server" />
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
							<asp:Button runat="server" ID="UpdateButton" CommandName="Update" Text="Update" CssClass="btn btn-primary" />
							<asp:Button runat="server" ID="CancelButton" CommandName="Cancel" Text="Cancel" CausesValidation="false" CssClass="btn btn-default" />
						</div>
					</div>
                </fieldset>
            </EditItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>


<%@ Page Title="MyAppUserDelete" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Delete.aspx.cs" Inherits="WebApplication2.MyAppUsers.Delete" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <h3>Are you sure want to delete this MyAppUser?</h3>
        <asp:FormView runat="server"
            ItemType="WebApplication2.Models.MyAppUser" DataKeyNames="Id"
            DeleteMethod="DeleteItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the MyAppUser with Id <%: Request.QueryString["Id"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Delete MyAppUser</legend>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Id</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Id" ID="Id" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Email</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Email" ID="Email" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>EmailConfirmed</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="EmailConfirmed" ID="EmailConfirmed" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>PasswordHash</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="PasswordHash" ID="PasswordHash" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>SecurityStamp</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="SecurityStamp" ID="SecurityStamp" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>PhoneNumber</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="PhoneNumber" ID="PhoneNumber" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>PhoneNumberConfirmed</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="PhoneNumberConfirmed" ID="PhoneNumberConfirmed" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>TwoFactorEnabled</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="TwoFactorEnabled" ID="TwoFactorEnabled" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>LockoutEndDateUtc</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="LockoutEndDateUtc" ID="LockoutEndDateUtc" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>LockoutEnabled</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="LockoutEnabled" ID="LockoutEnabled" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>AccessFailedCount</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="AccessFailedCount" ID="AccessFailedCount" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>UserName</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="UserName" ID="UserName" Mode="ReadOnly" />
								</div>
							</div>
                 	<div class="row">
					  &nbsp;
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" CssClass="btn btn-danger" />
							<asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" CssClass="btn btn-default" />
						</div>
					</div>
                </fieldset>
            </ItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>


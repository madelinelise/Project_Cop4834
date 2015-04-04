<%@ Page Title="Profile" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Default.aspx.cs" Inherits="WebApplication2.MyAppUsers.Default" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <h2>Profile</h2>
    <p>
      <!--  <asp:HyperLink runat="server" NavigateUrl="Insert" Text="Create new" /> -->
    </p>
    <div>
        <asp:ListView id="ListView1" runat="server"
            DataKeyNames="Id" 
			ItemType="WebApplication2.Models.MyAppUser"
            SelectMethod="GetData">
            <EmptyDataTemplate>
                There are no entries found for MyAppUsers
            </EmptyDataTemplate>
            <LayoutTemplate>
                <table class="table">
                    <thead>
                        <tr>

                            <th>
								<asp:LinkButton Text="First Name" CommandName="Sort" CommandArgument="FirstName" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Last Name" CommandName="Sort" CommandArgument="LastName" runat="Server" />
							</th>


                            <th>
								 <!-- <asp:LinkButton Text="Id" CommandName="Sort" CommandArgument="Id" runat="Server" /> -->
							</th>
                            <th>
								<asp:LinkButton Text="Email" CommandName="Sort" CommandArgument="Email" runat="Server" />
							</th>
                            <th>
								  <asp:LinkButton Text="EmailConfirmed" CommandName="Sort" CommandArgument="EmailConfirmed" runat="Server" />
							</th>
                            <th>
								<!-- <asp:LinkButton Text="PasswordHash" CommandName="Sort" CommandArgument="PasswordHash" runat="Server" /> -->
							</th>
                            <th>
								<!-- <asp:LinkButton Text="SecurityStamp" CommandName="Sort" CommandArgument="SecurityStamp" runat="Server" /> -->
							</th>
                            <th>
								<asp:LinkButton Text="PhoneNumber" CommandName="Sort" CommandArgument="PhoneNumber" runat="Server" />
							</th>
                            <th>
								<!-- <asp:LinkButton Text="PhoneNumberConfirmed" CommandName="Sort" CommandArgument="PhoneNumberConfirmed" runat="Server" /> -->
							</th>
                            <th>
								<!-- <asp:LinkButton Text="TwoFactorEnabled" CommandName="Sort" CommandArgument="TwoFactorEnabled" runat="Server" /> -->
							</th>
                            <th>
								<!-- <asp:LinkButton Text="LockoutEndDateUtc" CommandName="Sort" CommandArgument="LockoutEndDateUtc" runat="Server" /> -->
							</th>
                            <th>
								<!-- <asp:LinkButton Text="LockoutEnabled" CommandName="Sort" CommandArgument="LockoutEnabled" runat="Server" /> -->
							</th>
                            <th>
								<!-- <asp:LinkButton Text="AccessFailedCount" CommandName="Sort" CommandArgument="AccessFailedCount" runat="Server" /> -->
							</th>
                            <th>
								<asp:LinkButton Text="UserName" CommandName="Sort" CommandArgument="UserName" runat="Server" />
							</th>
                            <th>&nbsp;</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr runat="server" id="itemPlaceholder" />
                    </tbody>
                </table>
				<asp:DataPager PageSize="5"  runat="server">
					<Fields>
                        <asp:NextPreviousPagerField ShowLastPageButton="False" ShowNextPageButton="False" ButtonType="Button" ButtonCssClass="btn" />
                        <asp:NumericPagerField ButtonType="Button"  NumericButtonCssClass="btn" CurrentPageLabelCssClass="btn disabled" NextPreviousButtonCssClass="btn" />
                        <asp:NextPreviousPagerField ShowFirstPageButton="False" ShowPreviousPageButton="False" ButtonType="Button" ButtonCssClass="btn" />
                    </Fields>
				</asp:DataPager>
            </LayoutTemplate>
            <ItemTemplate>
                <tr>

                    <td>
								<asp:DynamicControl runat="server" DataField="FirstName" ID="FirstName" Mode="ReadOnly" />
							</td>

                    <td>
								<asp:DynamicControl runat="server" DataField="LastName" ID="LastName" Mode="ReadOnly" />
							</td>

							<td>
								 <!-- <asp:DynamicControl runat="server" DataField="Id" ID="Id" Mode="ReadOnly" /> -->
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Email" ID="Email" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="EmailConfirmed" ID="EmailConfirmed" Mode="ReadOnly" />
							</td>
							<td>
								<!-- <asp:DynamicControl runat="server" DataField="PasswordHash" ID="PasswordHash" Mode="ReadOnly" /> -->
							</td>
							<td>
							<!--	<asp:DynamicControl runat="server" DataField="SecurityStamp" ID="SecurityStamp" Mode="ReadOnly" /> -->
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="PhoneNumber" ID="PhoneNumber" Mode="ReadOnly" /> 
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="PhoneNumberConfirmed" ID="PhoneNumberConfirmed" Mode="ReadOnly" />
							</td>
							<td>
							<!--	<asp:DynamicControl runat="server" DataField="TwoFactorEnabled" ID="TwoFactorEnabled" Mode="ReadOnly" /> -->
							</td>
							<td>
							<!--	<asp:DynamicControl runat="server" DataField="LockoutEndDateUtc" ID="LockoutEndDateUtc" Mode="ReadOnly" /> -->
							</td>
							<td>
								<!-- <asp:DynamicControl runat="server" DataField="LockoutEnabled" ID="LockoutEnabled" Mode="ReadOnly" /> -->
							</td>
							<td>
								<!-- <asp:DynamicControl runat="server" DataField="AccessFailedCount" ID="AccessFailedCount" Mode="ReadOnly" /> -->
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="UserName" ID="UserName" Mode="ReadOnly" />
							</td>
                    <td>
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/MyAppUsers/Details", Item.Id) %>' Text="Details" /> | 
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/MyAppUsers/Edit", Item.Id) %>' Text="Edit" /> | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/MyAppUsers/Delete", Item.Id) %>' Text="Delete" />
                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>


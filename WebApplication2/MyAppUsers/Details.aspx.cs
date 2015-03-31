using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using Microsoft.AspNet.FriendlyUrls.ModelBinding;
using WebApplication2.Models;

namespace WebApplication2.MyAppUsers
{
    public partial class Details : System.Web.UI.Page
    {
		protected WebApplication2.Models.ApplicationDbContext _db = new WebApplication2.Models.ApplicationDbContext();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Select methd to selects a single MyAppUser item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        /* public WebApplication2.Models.MyAppUser GetItem([FriendlyUrlSegmentsAttribute(0)]string? Id)
         {
             if (Id == null)
             {
                 return null;
             }

             using (_db)
             {
                 return _db.Users.Where(m => m.Id = Id).FirstOrDefault();
             }
         }
         */
        protected void ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Cancel", StringComparison.OrdinalIgnoreCase))
            {
                Response.Redirect("../Default");
            } 
        }
    }
}


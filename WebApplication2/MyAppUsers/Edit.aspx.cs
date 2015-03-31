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
    public partial class Edit : System.Web.UI.Page
    {
		protected WebApplication2.Models.ApplicationDbContext _db = new WebApplication2.Models.ApplicationDbContext();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Update methd to update the selected MyAppUser item
        // USAGE: <asp:FormView UpdateMethod="UpdateItem">
        public void UpdateItem(string  Id)
        {
            using (_db)
            {
                var item = _db.Users.Find(Id);

                if (item == null)
                {
                    // The item wasn't found
                    ModelState.AddModelError("", String.Format("Item with id {0} was not found", Id));
                    return;
                }

                TryUpdateModel(item);

                if (ModelState.IsValid)
                {
                    // Save changes here
                    _db.SaveChanges();
                    Response.Redirect("../Default");
                }
            }
        }

        // This is the Select method to selects a single MyAppUser item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public WebApplication2.Models.MyAppUser GetItem([FriendlyUrlSegmentsAttribute(0)]string UserName)
        {
            if (UserName == null)
            {
                return null;
            }

            using (_db)
            {
                return _db.Users.Find(UserName);
            }
        }

        protected void ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Cancel", StringComparison.OrdinalIgnoreCase))
            {
                Response.Redirect("../Default");
            }
        }
    }
}

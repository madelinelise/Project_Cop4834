using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using WebApplication2.Models;
using Microsoft.AspNet.Identity;

namespace WebApplication2.MyAppUsers
{

  

    public partial class Default : System.Web.UI.Page
    {
		
        
        
        protected WebApplication2.Models.ApplicationDbContext _db = new WebApplication2.Models.ApplicationDbContext();

        protected void Page_Load(object sender, EventArgs e)
        {

           

            if (Context.User.IsInRole("Administrator"))
            {
                Response.Redirect("~/Default.aspx");
                
            }

           
        }

        // Model binding method to get List of MyAppUser entries
        // USAGE: <asp:ListView SelectMethod="GetData">
        public IQueryable<WebApplication2.Models.MyAppUser> GetData()
        {
            return _db.Users.Where(u => u.UserName == User.Identity.Name).Take(1);
        }
    }
}


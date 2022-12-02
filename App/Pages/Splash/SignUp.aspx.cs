using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_HospitalPortal.App.Pages.Splash
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void signupbutton_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Sign Up Works');</script>");

        }
    }
}
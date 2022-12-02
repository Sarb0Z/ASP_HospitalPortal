using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_HospitalPortal.App.Pages.Splash
{
    public partial class SignUp : System.Web.UI.Page
    {
        string dbCon = ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void signupbutton_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection connectionString=new SqlConnection(dbCon);
                if (connectionString.State == System.Data.ConnectionState.Closed)
                {
                    connectionString.Open();
                }
                string sqlFormattedDate = objUser.date_created.ToString("yyyy-MM-dd HH:mm:ss.fff");

                string query = @"Insert into dbo._user values
                ('@username',' @email_id','@dob','@cnic')";
                SqlCommand addUserCommand= new SqlCommand(query, connectionString);
                addUserCommand.Parameters.AddWithValue("@username", NameBox);
                addUserCommand.Parameters.AddWithValue("email_id", MailBox);
                addUserCommand.Parameters.AddWithValue("@dob", PassBox);
                addUserCommand.Parameters.AddWithValue("@cnic", CNICBox);
            }
            catch(Exception ex) 
            {

            }
            Response.Write("<script>alert('Sign Up Works');</script>");

        }
    }
}
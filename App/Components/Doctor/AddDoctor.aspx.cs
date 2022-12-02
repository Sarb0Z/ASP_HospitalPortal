using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_HospitalPortal.App.Components.Doctor
{
    public partial class AddDoctor1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string dbCon = ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString;
            try
            {
                SqlConnection connectionString = new SqlConnection(dbCon);
                if (connectionString.State == System.Data.ConnectionState.Closed)
                {
                    connectionString.Open();
                }
                //DateTime dt = DOB.SelectedDate;
                string userQuery = @"exec dbo.POST_TO_DOCTOR @doctor_name, @title";
                SqlCommand addUserCommand = new SqlCommand(userQuery, connectionString);
                addUserCommand.Parameters.AddWithValue("@doctor_name", namebox.Text.Trim());
                addUserCommand.Parameters.AddWithValue("@title", cnicbox.Text.Trim());
                

                addUserCommand.ExecuteNonQuery();
                Response.Write("<script>alert('ADD Works');</script>");

            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}
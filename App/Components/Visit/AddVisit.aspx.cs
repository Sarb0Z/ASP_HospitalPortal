using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_HospitalPortal.App.Components.Visits
{
    public partial class AddVisit : System.Web.UI.Page
    {
        string dbCon = ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnAddVisit_Click(object sender, EventArgs e)
        {

            try
            {
                SqlConnection connectionString = new SqlConnection(dbCon);
                if (connectionString.State == System.Data.ConnectionState.Closed)
                {
                    connectionString.Open();
                }
                //DateTime dt = DOB.SelectedDate;
                string userQuery = @"exec dbo.POST_TO_VISIT @timing, @purpose, @patient_id, @doctor_id";
                SqlCommand addUserCommand = new SqlCommand(userQuery, connectionString);
                addUserCommand.Parameters.AddWithValue("@purpose", pbox.Text.Trim());
                addUserCommand.Parameters.AddWithValue("@patient_id", TextBox2.Text.Trim());
                addUserCommand.Parameters.AddWithValue("@doctor_id", TextBox1.Text.Trim());
                addUserCommand.Parameters.AddWithValue("@time", "NULL");

                addUserCommand.ExecuteNonQuery();


                connectionString.Close();
                Response.Write("<script>alert('ADD Works');</script>");

            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }
            
}
    }

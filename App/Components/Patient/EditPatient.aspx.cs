using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_HospitalPortal.App.Components.Patient
{
    public partial class EditPatient : System.Web.UI.Page
    {
        string dbCon = ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnUpdatePatient_Click(object sender, EventArgs e)
        {
            string dbCon = ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString;
            try
            {
                SqlConnection connectionString = new SqlConnection(dbCon);
                if (connectionString.State == System.Data.ConnectionState.Closed)
                {
                    connectionString.Open();
                }
                string userQuery = @"exec dbo.UPDATE_PATIENT @id, @patient_name, @cnic, @dob";
                SqlCommand addUserCommand = new SqlCommand(userQuery, connectionString);
                addUserCommand.Parameters.AddWithValue("@id", TextBox2.Text.Trim());
                addUserCommand.Parameters.AddWithValue("@patient_name", namebox.Text.Trim());
                addUserCommand.Parameters.AddWithValue("@cnic", cnicbox.Text.Trim());
                addUserCommand.Parameters.AddWithValue("@dob", TextBox1.Text.Trim());
              
                addUserCommand.ExecuteNonQuery();
                Response.Write("<script>alert('EDIT Works');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}
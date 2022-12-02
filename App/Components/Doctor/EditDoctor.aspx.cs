using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_HospitalPortal.App.Components.Doctor
{
    public partial class EditDoctor : System.Web.UI.Page
    {
        string dbCon = ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string dbCon = ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString;
            try
            {
                SqlConnection connectionString = new SqlConnection(dbCon);
                if (connectionString.State == System.Data.ConnectionState.Closed)
                {
                    connectionString.Open();
                }
                string userQuery = @"exec dbo.UPDATE_DOCTOR @id, @doctor_name, @title";
                SqlCommand addUserCommand = new SqlCommand(userQuery, connectionString);
                addUserCommand.Parameters.AddWithValue("@id", txtDoctorID.Text.Trim());
                addUserCommand.Parameters.AddWithValue("@doctor_name", txtDoctorName.Text.Trim());
                addUserCommand.Parameters.AddWithValue("@title", txtDoctorSpecialization.Text.Trim());

                addUserCommand.ExecuteNonQuery();
                Response.Write("<script>alert('UPDATE Works');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}
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
    public partial class EditVisit : System.Web.UI.Page
    {
        string dbCon = ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpdateVisit_Click(object sender, EventArgs e)
        {
            string dbCon = ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString;
            try
            {
                SqlConnection connectionString = new SqlConnection(dbCon);
                if (connectionString.State == System.Data.ConnectionState.Closed)
                {
                    connectionString.Open();
                }
                //string sqlFormattedDate = Timing.ToString("yyyy-MM-dd HH:mm:ss.fff");
                string userQuery = @"exec dbo.UPDATE_VISIT @id, @timing, @purpose, @patient_id, @doctor_id";
                SqlCommand addUserCommand = new SqlCommand(userQuery, connectionString);
                addUserCommand.Parameters.AddWithValue("@id", IDBox.Text.Trim());
                addUserCommand.Parameters.AddWithValue("@timing", Timing.Text.Trim());
                addUserCommand.Parameters.AddWithValue("@purpose", PurposeBox.Text.Trim());
                addUserCommand.Parameters.AddWithValue("@patient_id", PatientBox.Text.Trim());
                addUserCommand.Parameters.AddWithValue("@doctor_id", DoctorBox.Text.Trim());
                

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
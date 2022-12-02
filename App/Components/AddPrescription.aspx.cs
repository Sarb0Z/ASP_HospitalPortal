using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_HospitalPortal.App.Components
{
    public partial class Prescription : System.Web.UI.Page
    {
        string dbCon = ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void btnAddPrescription_Click(object sender, EventArgs e)
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
                string userQuery = @"exec dbo.POST_TO_PRESCRIPTION @patient_id, @medicine_id,@recommendation,@intake_amount,@doctor_id,@test_id";
                SqlCommand addUserCommand = new SqlCommand(userQuery, connectionString);
                addUserCommand.Parameters.AddWithValue("@patient_id", pidbox.Text.Trim());
                addUserCommand.Parameters.AddWithValue("@medicine_id", cnicbox.Text.Trim());
                addUserCommand.Parameters.AddWithValue("@recommendation", TextBox1.Text.Trim());
                addUserCommand.Parameters.AddWithValue("@intake_amount", iabox.Text.Trim());
                addUserCommand.Parameters.AddWithValue("@doctor_id", docbox.Text.Trim());
                addUserCommand.Parameters.AddWithValue("@test_id", tidbox.Text.Trim());



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
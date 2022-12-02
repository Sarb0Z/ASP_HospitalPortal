using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_HospitalPortal.App.Pages.Splash
{
    public partial class Loginaspx : System.Web.UI.Page
    {
        string dbCon = ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginbutton_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection connectionString = new SqlConnection(dbCon);
                if (connectionString.State == System.Data.ConnectionState.Closed)
                {
                    connectionString.Open();
                }
        

                string query = @"Select * from dbo._login where email_id = @email_id and CONVERT(varchar, _password) = @password";
                SqlCommand addLoginCommand = new SqlCommand(query, connectionString);
                addLoginCommand.Parameters.AddWithValue("@email_id", mailbox.Text.Trim());
                addLoginCommand.Parameters.AddWithValue("@password", passwordbox.Text.Trim());

                SqlDataAdapter da = new SqlDataAdapter(addLoginCommand);

                DataTable loginData = new DataTable();
                da.Fill(loginData);

                if (loginData != null && loginData.Rows.Count > 0)
                {
                    Response.Write("<script>alert('Logged in successfully!');</script>");
                }
                


                connectionString.Close();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }


        }
} 
    
}
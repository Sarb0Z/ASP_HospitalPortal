using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
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
                //DateTime dt = DOB.SelectedDate;
                string userQuery = @"Insert into dbo._user (username, email_id, date_created, cnic) values (@username,@email_id, GETDATE(), @cnic)";
                SqlCommand addUserCommand = new SqlCommand(userQuery, connectionString);
                addUserCommand.Parameters.AddWithValue("@username", NameBox.Text.Trim());
                addUserCommand.Parameters.AddWithValue("email_id", MailBox.Text.Trim());
                //addUserCommand.Parameters.AddWithValue("@date_created", "GETDATE()");
                addUserCommand.Parameters.AddWithValue("@cnic", CNICBox.Text.Trim());

                addUserCommand.ExecuteNonQuery();


                //Encryption encryptor = new Encryption(_protector);
                //string encrypted_password = encryptor.EncryptPassword(objLogin.password);

                //string decrypted_password = encryptor.DecryptPassword(ecrypted_password);

                string loginQuery = @"Insert into dbo._login (id, email_id, _password, password_Encrypted, date_modified)
                values (@id , @email_id,CONVERT(varbinary, @password), null, GETDATE())";
                string referenceQuery = @"Select * from dbo._user where cnic = @cnic";
                SqlCommand getUserCommand = new SqlCommand(referenceQuery, connectionString);
                getUserCommand.Parameters.AddWithValue("@cnic", CNICBox.Text.Trim());
                SqlDataAdapter da =new SqlDataAdapter(getUserCommand);

                DataTable userData = new DataTable();
                da.Fill(userData);

                if (userData != null && userData.Rows.Count > 0)
                {
                    if (userData.Rows[0]["email_id"].ToString() == MailBox.Text.Trim())
                    {
                        SqlCommand addPasswordCommand = new SqlCommand(loginQuery, connectionString);
                        addPasswordCommand.Parameters.AddWithValue("@id", userData.Rows[0]["id"].ToString());
                        addPasswordCommand.Parameters.AddWithValue("@email_id", userData.Rows[0]["email_id"].ToString());
                        addPasswordCommand.Parameters.AddWithValue("@password", PassBox.Text.Trim());
                        
                        
                        addPasswordCommand.ExecuteNonQuery();


                    }
                }
                connectionString.Close();

                Response.Write("<script>alert('Sign Up Works');</script>");


            }
            catch (Exception ex) 
            {
                Response.Write("<script>alert('"+ex.Message+"');</script>");

            }

        }
    }
}
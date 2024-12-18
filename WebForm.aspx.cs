using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication9
{
    public partial class WebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;" +
    "Initial Catalog=new;" +  // Replace with the actual database name
    "Integrated Security=True;Connect Timeout=30;Encrypt=False;" +
    "TrustServerCertificate=False;");

            con.Open();
            string insertQuery = "INSERT INTO Data (Name, Email, Address, Username, [File], Dob, Color, Gender, Sports) " +
                     "VALUES (@Name, @Email, @Address, @Username, @File, @Dob, @Color, @Gender, @Sports)";

            SqlCommand cmd = new SqlCommand(insertQuery, con);
            cmd.Parameters.AddWithValue("@Name", TextName.Text);
            cmd.Parameters.AddWithValue("@Email", txtemail.Text);
            cmd.Parameters.AddWithValue("@Address", Textadd.Text);
            cmd.Parameters.AddWithValue("@Username", Textusername.Text);
            cmd.Parameters.AddWithValue("@File", FileUpload1.FileBytes);
            cmd.Parameters.AddWithValue("@Dob", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Color", RadioButtonList1.Text);
            cmd.Parameters.AddWithValue("@Gender", DropDownList1.SelectedItem.ToString());
            string selectedSports = string.Join(",", SportsCheckBoxList.Items.Cast<ListItem>()
                                           .Where(i => i.Selected)
                                           .Select(i => i.Value));
            cmd.Parameters.AddWithValue("@Sports", selectedSports);
            int count = cmd.ExecuteNonQuery();
            //if(count>0)
            //{
               // Response.Write("File uploaded successfully.");
            //}
            //else
            //{
                //Response.Write("Please upload a file.");
            //}
            if (count > 0)
            {
                // Display success alert
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('File uploaded successfully.');", true);
            }
            else
            {
                // Display error alert
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Please upload a file.');", true);
            }

            con.Close();
        }
    }
}
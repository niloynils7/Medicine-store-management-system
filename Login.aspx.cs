using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace medicine_store_management_system
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=D:\\visual studio code\\MSMS v2.0\\medicine store management system\\medicine store management system\\App_Data\\MedicineStore.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginbutton_Click(object sender, EventArgs e)
        {
            connection.Open();
            string checkuser = "select count(*) from [Login] where Email=@email and Password=@pass";
            SqlCommand command = new SqlCommand(checkuser, connection);
            command.Parameters.Add("@email", SqlDbType.NVarChar).Value = loginemail.Text;
            command.Parameters.Add("@pass", SqlDbType.NVarChar).Value = loginpassword.Text;
            int temp = Convert.ToInt32(command.ExecuteScalar().ToString());
            connection.Close();
            if(temp==1)
            {
                Response.Redirect("seller.aspx");
            }
            else
            {
                Response.Write(".......Wrong Email or Password......");
            }
        }
    }
}
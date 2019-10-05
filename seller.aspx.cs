using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


namespace medicine_store_management_system
{
    public partial class seller : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ButtonSearch_Click1(object sender, EventArgs e)
        {
            //SqlConnection connection = new SqlConnection("Data Source = (LocalDB)\\MSSQLLocalDB; AttachDbFilename = D:\\EXTRA\\AUST CSE\\CSE 3.2\\SD\\medicine store management system\\medicine store management system\\App_Data\\MedicineStore.mdf; Integrated Security = True");
            SqlConnection connection = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=D:\\visual studio code\\MSMS v2.0\\medicine store management system\\medicine store management system\\App_Data\\MedicineStore.mdf;Integrated Security=True");
            connection.Open();
            String str = "SELECT [product_id], [product_name], [price], [group], [product_count], [location], [Mfg_Date], [Expire_Date] FROM [Product] where (product_name like '%' +@search+ '%')";
            SqlCommand query = new SqlCommand(str, connection);
            query.Parameters.Add("@search", SqlDbType.NVarChar).Value = TextSearch.Text;
            query.ExecuteNonQuery();
            SqlDataAdapter dataAdapter = new SqlDataAdapter();
            dataAdapter.SelectCommand = query;
            DataSet dataSet = new DataSet();
            dataAdapter.Fill(dataSet, "product_name");
            GridViewSearch.DataSource = dataSet;
            GridViewSearch.DataBind();
            connection.Close();
        }

        /*protected void ButtonAdd_Click(object sender, EventArgs e)
        {
            //SqlConnection connection = new SqlConnection("Data Source = (LocalDB)\\MSSQLLocalDB; AttachDbFilename = D:\\EXTRA\\AUST CSE\\CSE 3.2\\SD\\medicine store management system\\medicine store management system\\App_Data\\MedicineStore.mdf; Integrated Security = True");
            SqlConnection connection = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=D:\\visual studio code\\MSMS v2.0\\medicine store management system\\medicine store management system\\App_Data\\MedicineStore.mdf;Integrated Security=True");
            connection.Open();
            String str = "INSERT INTO Order ([product_id],[count]) VALUES ()";
            SqlCommand query = new SqlCommand(str, connection);
            query.Parameters.Add("@search", SqlDbType.NVarChar).Value = TextSearch.Text;
            query.ExecuteNonQuery();
            
            connection.Close();
        }*/
    }
}
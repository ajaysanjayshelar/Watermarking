using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication1
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        private string cs = ConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        SqlConnection conn;
        SqlCommand comm;
        SqlDataAdapter adp;
        SqlDataReader dr;
        DataSet ds;

        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(cs);
            conn.Open();
            using (comm = new SqlCommand("select specialist_list from specialist_details", conn))
            {
                DropDownList1.DataSource = comm.ExecuteReader();
                DropDownList1.DataTextField = "specialist_list";
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, new ListItem("--SELECT--", "0"));
                conn.Close();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlCommand comm1 = new SqlCommand("insert into doctor_master(f_name, l_name, email_id, pasword, mobile_no, specialist, gender, addresss) values(@f_name, @l_name, @email_id, @pasword, @mobile_no, @specialist, @gender, @addresss)", conn))
            {
                conn.Open();
                comm1.Parameters.AddWithValue("@f_name", TextBox1.Text);
                comm1.Parameters.AddWithValue("@l_name", TextBox2.Text);
                comm1.Parameters.AddWithValue("@email_id", TextBox3.Text);
                comm1.Parameters.AddWithValue("@pasword", TextBox4.Text);
                comm1.Parameters.AddWithValue("@mobile_no", TextBox5.Text);
                comm1.Parameters.AddWithValue("@specialist", DropDownList1.SelectedValue);
                comm1.Parameters.AddWithValue("@gender", DropDownList2.SelectedValue);
                comm1.Parameters.AddWithValue("@addresss", TextBox6.Text);
                comm1.ExecuteNonQuery();
                Response.Redirect("login.aspx");
            }
        }
    }
}
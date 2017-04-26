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
    public partial class WebForm2 : System.Web.UI.Page
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
            Label1.Visible = false;
            Label2.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            DropDownList1.SelectedValue = "--SELECT--";
            Label1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue == "--SELECT--")
            {
                Label1.Visible = true;
            }
            else if (DropDownList1.SelectedValue == "Admin")
            {
                using (comm = new SqlCommand("select * from admin_master where username='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'", conn))
                {
                    using (dr = comm.ExecuteReader())
                    {
                        while (dr.Read())
                        {
                            if (dr.HasRows)
                            {
                                Label1.Visible = false;
                                Session["id"]=TextBox1.Text;
                                Response.Redirect("admin/admin_home.aspx");
                            }
                        }
                    }

                    Label2.Visible = true;
                    Label1.Visible = false;
                    TextBox1.Text = "";
                    TextBox2.Text = "";

                }

            }
            else
            {
                using (comm = new SqlCommand("select * from doctor_master where email_id='" + TextBox1.Text + "' and pasword='" + TextBox2.Text + "'", conn))
                {
                    using (dr = comm.ExecuteReader())
                    {
                        while (dr.Read())
                        {
                            if (dr.HasRows)
                            {
                                Label1.Visible = false;
                                Session["id"] = TextBox1.Text;
                                Response.Redirect("doctor/home.aspx");
                            }
                        }
                    }

                    Label2.Visible = true;
                    Label1.Visible = false;
                    TextBox1.Text = "";
                    TextBox2.Text = "";

                }
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("registration.aspx");
        }
    }
}

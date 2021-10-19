using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookManagement
{
    
    public partial class userlogin : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            //Response.Write("<script>alert('Button Click');</script>");
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM member_login WHERE member_id = '" + TextBox1.Text.Trim() + "' AND password = '" + TextBox2.Text.Trim() + "';", con);
                SqlDataReader dataread = cmd.ExecuteReader();
                if (dataread.HasRows)
                {
                    while (dataread.Read())
                    {
                        Response.Write("<script>alert('" + dataread.GetValue(8).ToString() + "');</script>");
                        Session["username"] = dataread.GetValue(8).ToString();
                        Session["fullname"] = dataread.GetValue(0).ToString();
                        Session["role"] = "member";
                        Session["fullname"] = dataread.GetValue(10).ToString();

                    }
                    Response.Redirect("homepage.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid Details')</script>");
                }
            }
            catch (Exception ex)
            {

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");
        }
    }
}
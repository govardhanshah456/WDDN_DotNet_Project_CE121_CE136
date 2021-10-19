using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookManagement
{
    public partial class AdminMemberManagement : System.Web.UI.Page
    {
        string strcon = WebConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }
        //ACTIVE
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            updatestatus("Active");
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM member_login WHERE member_id='" + TextBox2.Text.Trim() + "';", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        TextBox5.Text = "Active";
                    }
                    
                }
                Response.Write("<script>alert('Updation Successfull');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('ex.Message');</script>");
            }
            GridView1.DataBind();
        }
        //PENDING
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            updatestatus("pending");
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM member_login WHERE member_id='" + TextBox2.Text.Trim() + "';", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        TextBox5.Text = "Pending";
                    }
                    
                }
                Response.Write("<script>alert('Updation Successfull');</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('ex.Message');</script>");
            }
            GridView1.DataBind();
        }
        //DELETE
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            updatestatus("suspended");
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM member_login WHERE member_id='" + TextBox2.Text.Trim() + "';", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        TextBox5.Text ="Suspended";
                    }
                    
                }
                Response.Write("<script>alert('Updation Successfull');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('ex.Message');</script>");
            }
            GridView1.DataBind();
        }
        //GO
        void updatestatus(string status)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("update member_login set account_status='"+status+"' WHERE member_id='"+TextBox2.Text.Trim()+"';", con);
                cmd.ExecuteNonQuery();
                con.Close();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('ex.Message');</script>");
            }
        }
        protected void Button5_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM member_login WHERE member_id='" + TextBox2.Text.Trim() + "';", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        TextBox1.Text = dr.GetValue(0).ToString();
                        TextBox8.Text = dr.GetValue(1).ToString();
                        TextBox7.Text = dr.GetValue(2).ToString();
                        TextBox6.Text = dr.GetValue(3).ToString();
                        TextBox9.Text = dr.GetValue(4).ToString();
                        TextBox10.Text = dr.GetValue(5).ToString();
                        TextBox11.Text = dr.GetValue(6).ToString();
                        TextBox12.Text = dr.GetValue(7).ToString();
                        TextBox5.Text = dr.GetValue(10).ToString();
                    }
                }
                else
                {
                    Response.Write("<script>alert('Invalid ID');</script>");
                }

            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('ex.Message');</script>");
            }
        }
        //DELETEUSER
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("delete FROM member_login WHERE member_id='" + TextBox2.Text.Trim() + "';", con);
                cmd.ExecuteNonQuery();
                con.Close();
                GridView1.DataBind();
                Response.Write("<script>alert('Deletion Successfull');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('ex.Message');</script>");
            }
            clearform();
        }
        void clearform()
        {
            TextBox1.Text = "";
            TextBox8.Text = "";
            TextBox7.Text = "";
            TextBox6.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";
            TextBox12.Text = "";
            TextBox5.Text = "";
            TextBox2.Text = "";
        }
    }
}
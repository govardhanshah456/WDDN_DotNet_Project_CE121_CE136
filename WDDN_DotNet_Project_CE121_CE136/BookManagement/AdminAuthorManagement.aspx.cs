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
    public partial class AdminAuthorManagement : System.Web.UI.Page
    {
        string strcon = WebConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }
        //ADD
        void addNewAuthor()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }


                SqlCommand cmd = new SqlCommand("INSERT INTO author_login(author_id,author_name)" +
                     "VALUES(@author_id,@author_name)", con);
                //SqlCommand cmd = new SqlCommand("INSERT INTO member_master_tabel VALUES('abhay', '11-10-2018', '1234567890', 'mail@demo.com', 'Gujarat', 'Ahmedabad', '380001', 'qwertytjfgnbvf', 'ts13', '456', 'pending');", con);
                cmd.Parameters.AddWithValue("@author_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@author_name", TextBox2.Text.Trim());
                
                cmd.ExecuteNonQuery();
                con.Close();

                GridView1.DataBind();
                Response.Write("<script>alert('Author Added Successfully.');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (CheckAuthorExist())
            {
                Response.Write("<script>alert('Author Already Exist');</script>");
            }
            else
            {
                addNewAuthor();
            }
            clearform();
        }
        //UPDATE
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (CheckAuthorExist())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }


                    SqlCommand cmd = new SqlCommand("update author_login set author_name=@author_name where author_id='"+TextBox1.Text.Trim()+"'", con);
                    //SqlCommand cmd = new SqlCommand("INSERT INTO member_master_tabel VALUES('abhay', '11-10-2018', '1234567890', 'mail@demo.com', 'Gujarat', 'Ahmedabad', '380001', 'qwertytjfgnbvf', 'ts13', '456', 'pending');", con);
                    cmd.Parameters.AddWithValue("@author_name", TextBox2.Text.Trim());
                    
                    cmd.ExecuteNonQuery();
                    con.Close();

                    GridView1.DataBind();
                    Response.Write("<script>alert('Author Updated Successfully.');</script>");
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Author Does not exist');</script>");
            }
            clearform();
        }
        //DELETE
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (CheckAuthorExist())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }


                    SqlCommand cmd = new SqlCommand("delete from author_login where author_id='"+TextBox1.Text.Trim()+"'", con);
                    //SqlCommand cmd = new SqlCommand("INSERT INTO member_master_tabel VALUES('abhay', '11-10-2018', '1234567890', 'mail@demo.com', 'Gujarat', 'Ahmedabad', '380001', 'qwertytjfgnbvf', 'ts13', '456', 'pending');", con);
                   
                    cmd.ExecuteNonQuery();
                    con.Close();

                    GridView1.DataBind();
                    Response.Write("<script>alert('Author Deleted SUccessFully.');</script>");
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
                clearform();
            }
            else
            {
                Response.Write("<script>alert('Author Does Not Exist');'</script>");
            }
        }
        //GO
        
        void clearform()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
        }
        public bool CheckAuthorExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM author_login WHERE author_id='" + TextBox1.Text.Trim() + "';", con);
                
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();

                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM author_login WHERE author_id='" + TextBox1.Text.Trim() + "';", con);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();

                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0][1].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Invalid ID');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}
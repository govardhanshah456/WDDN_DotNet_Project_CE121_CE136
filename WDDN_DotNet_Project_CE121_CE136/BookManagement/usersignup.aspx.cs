using System;
using System.Configuration;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;

namespace BookManagement
{
    public partial class usersignup : System.Web.UI.Page
    {
        string strcon = WebConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //protected void SignUp_Click(object sender, EventArgs e)
        //{
            
        //}

        protected void Button1_Click(object sender, EventArgs e)
        {
            //try
            //{
            //SqlConnection con = new SqlConnection(strcon);
            //if (con.State == ConnectionState.Closed)
            //{
            //con.Open();
            //}
            //SqlCommand cmd = new SqlCommand("INSERT INTO member_master_tabel VALUES(@full_name,@dob,@contact_no,@email,@state,@city,@pincode,@full_address,@member_id,@password,@account_status)", con);
            //SqlCommand cmd = new SqlCommand("INSERT INTO member_master_tabel(full_name,dob,contact_no,email,state,city,pincode,full_address,member_id,password,account_status) VALUES(@full_name,@dob,@contact_no,@email,@state,@city,@pincode,@full_address,@member_id,@password,@account_status)", con);
            //SqlCommand cmd = new SqlCommand("INSERT INTO member_master_tabel VALUES('abhay', '11-10-2018', '1234567890', 'mail@demo.com', 'Gujarat', 'Ahmedabad', '380001', 'qwertytjfgnbvf', 'ts13', '456', 'pending');", con);
            //    cmd.Parameters.AddWithValue("@full_name", TextBox1.Text.Trim());
            //    cmd.Parameters.AddWithValue("@dob", TextBox2.Text.Trim());
            //    cmd.Parameters.AddWithValue("@contact_no", TextBox3.Text.Trim());
            //    cmd.Parameters.AddWithValue("@email", TextBox4.Text.Trim());
            //    cmd.Parameters.AddWithValue("@state", DropDownList1.SelectedItem.Value);
            //    cmd.Parameters.AddWithValue("@city", TextBox6.Text.Trim());
            //    cmd.Parameters.AddWithValue("@pincode", TextBox7.Text.Trim());
            //    cmd.Parameters.AddWithValue("@full_address", TextBox5.Text.Trim());
            //    cmd.Parameters.AddWithValue("@member_id", TextBox8.Text.Trim());
            //    cmd.Parameters.AddWithValue("@password", TextBox9.Text.Trim());
            //    cmd.Parameters.AddWithValue("@account_status", "pending");

            //    cmd.ExecuteNonQuery();
            //    con.Close();
            //    Response.Write("<script>alert('signup is successful. Go to the login page.');</script>");
            //}
            //catch (Exception ex)
            //{
            //    Response.Write("<script>alert('" + ex.Message + "')</script>");
            //}


            if (checkMemberExists())
            {
                Response.Write("<script>alert('Member Already Exists.Try Again!!!');</script>");
            }
            else
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }


                    SqlCommand cmd = new SqlCommand("INSERT INTO member_login(full_name,dob,contact_no,email,state,city,pincode,full_address,member_id,password,account_status)" +
                         "VALUES(@full_name,@dob,@contact_no,@email,@state,@city,@pincode,@full_address,@member_id,@password,@account_status)", con);
                    //SqlCommand cmd = new SqlCommand("INSERT INTO member_master_tabel VALUES('abhay', '11-10-2018', '1234567890', 'mail@demo.com', 'Gujarat', 'Ahmedabad', '380001', 'qwertytjfgnbvf', 'ts13', '456', 'pending');", con);
                    cmd.Parameters.AddWithValue("@full_name", fullname_txt.Text.Trim());
                    cmd.Parameters.AddWithValue("@dob", dob_txt.Text.Trim());
                    cmd.Parameters.AddWithValue("@contact_no", contact_txt.Text.Trim());
                    cmd.Parameters.AddWithValue("@email", email_txt.Text.Trim());
                    cmd.Parameters.AddWithValue("@state", DropDownList1.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@city", city_txt.Text.Trim());
                    cmd.Parameters.AddWithValue("@pincode", pincode_txt.Text.Trim());
                    cmd.Parameters.AddWithValue("@full_address", fulladdress_txt.Text.Trim());
                    cmd.Parameters.AddWithValue("@member_id", TextBox8.Text.Trim());
                    cmd.Parameters.AddWithValue("@password", TextBox9.Text.Trim());
                    cmd.Parameters.AddWithValue("@account_status", "pending");

                    cmd.ExecuteNonQuery();
                    con.Close();


                    Response.Write("<script>alert('signup is successful. Go to the login page.');</script>");
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
        }


        bool checkMemberExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM member_login WHERE member_id='"+TextBox8.Text.Trim()+"';", con);
                //SqlCommand cmd = new SqlCommand("INSERT INTO member_master_tabel(full_name,dob,contact_no,email,state,city,pincode,full_address,member_id,password,account_status) VALUES(@full_name,@dob,@contact_no,@email,@state,@city,@pincode,@full_address,@member_id,@password,@account_status)", con);
                //SqlCommand cmd = new SqlCommand("INSERT INTO member_master_tabel VALUES('abhay', '11-10-2018', '1234567890', 'mail@demo.com', 'Gujarat', 'Ahmedabad', '380001', 'qwertytjfgnbvf', 'ts13', '456', 'pending');", con);                


                //cmd.Parameters.AddWithValue("@full_name", TextBox1.Text.Trim());
                //cmd.Parameters.AddWithValue("@dob", TextBox2.Text.Trim());
                //cmd.Parameters.AddWithValue("@contact_no", TextBox3.Text.Trim());
                //cmd.Parameters.AddWithValue("@email", TextBox4.Text.Trim());
                //cmd.Parameters.AddWithValue("@state", DropDownList1.SelectedItem.Value);
                //cmd.Parameters.AddWithValue("@city", TextBox6.Text.Trim());
                //cmd.Parameters.AddWithValue("@pincode", TextBox7.Text.Trim());
                //cmd.Parameters.AddWithValue("@full_address", TextBox5.Text.Trim());
                //cmd.Parameters.AddWithValue("@member_id", TextBox8.Text.Trim());
                //cmd.Parameters.AddWithValue("@password", TextBox9.Text.Trim());
                //cmd.Parameters.AddWithValue("@acount_status", "pending");

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
                //cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('signup is successful. Go to the login page.');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
            
        }

        //void signUpNewMember()
        //{
            
        //}
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookManagement
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["role"] == null)
            {
                LinkButton1.Visible = true;
                LinkButton2.Visible = true;
                LinkButton3.Visible = false;
                LinkButton7.Visible = false;
                LinkButton6.Visible = true;
                LinkButton11.Visible = false;

                LinkButton8.Visible = false;
                LinkButton9.Visible = false;
                LinkButton10.Visible = false;
                LinkButton12.Visible = false;
            }
            else if (Session["role"].Equals("admin"))
            {
                LinkButton1.Visible = false;
                LinkButton2.Visible = false;
                LinkButton3.Visible = true;
                LinkButton7.Visible = true;
                LinkButton7.Text = "Hello Admin";
                LinkButton6.Visible = false;
                LinkButton11.Visible = true;

                LinkButton8.Visible = true;
                LinkButton9.Visible = true;
                LinkButton10.Visible = true;
                LinkButton12.Visible = true;
            }
            else if(Session["role"].Equals("member"))
            {
                LinkButton1.Visible = false;
                LinkButton2.Visible = false;
                LinkButton3.Visible = true;
                LinkButton7.Visible = true;
                LinkButton7.Text = "Hello " + Session["username"].ToString();
                LinkButton6.Visible = true;
                LinkButton11.Visible = false;

                LinkButton8.Visible = false;
                LinkButton9.Visible = false;
                LinkButton10.Visible = false;
                LinkButton12.Visible = false;
            }
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminAuthorManagement.aspx");
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminPublisherManagement.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminBookInventory.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminBookIssueing.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminMemberManagement.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            LinkButton1.Visible = true;
            LinkButton2.Visible = true;
            LinkButton3.Visible = false;
            LinkButton7.Visible = false;
            LinkButton6.Visible = true;
            LinkButton11.Visible = false;

            LinkButton8.Visible = false;
            LinkButton9.Visible = false;
            LinkButton10.Visible = false;
            LinkButton12.Visible = false;

            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["status"] = "";

            Response.Redirect("homepage.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewBooks.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserProfile.aspx");
        }
    }
}
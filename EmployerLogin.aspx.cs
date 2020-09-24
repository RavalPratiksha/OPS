using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;



public partial class EmployerLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Button1_Click1(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());

        string str;
        str = "select count(*) from Employer where  UserName='" +txtempusername.Text + "' and Password='" +txtemppassword.Text + "' ";

        SqlCommand cmd = new SqlCommand(str, con);

        con.Open();


        int i;
        i = Convert.ToInt32(cmd.ExecuteScalar());

        if (i == 1)
        {
            Response.Redirect("~/Employer/HomePage.aspx");
        }
        else
        {
            lblMessage.Text = "UserName or Password Incorrect.";
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class JobSeeker_SearchByCity : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            BindCity();
        }
    }

    public void BindCity()
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());

        String str = "";
        str = "Select * from City";

        SqlCommand cmd = new SqlCommand(str, con);

        con.Open();

        SqlDataReader dr;
        dr = cmd.ExecuteReader();

        drpcity.DataSource = dr;
        drpcity.DataTextField = "City_name";
        drpcity.DataValueField = "City_id";
        drpcity.DataBind();

        drpcity.Items.Insert(0, "Select City");
    }

    protected void btnsearch_Click(object sender, EventArgs e)
    {
        if (drpcity.SelectedItem.Text == "Select City")
        {
            lblcity.Text = "Please select your City.";
            GridView1.Visible = false;
            return;
        }
        lblcity.Text = "";
        GridView1.Visible = true;
        SqlConnection con1 = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());

        string str1;
        str1 = "Select Company_name,Job_title,Qual_req,Exp_req from Company,jobdetail,Employer where Company.Employer_id = jobdetail.Employer_id and  Country_id = " + drpcity.SelectedItem.Value + " ";


        SqlCommand cmd1 = new SqlCommand(str1, con1);
        con1.Open();

        SqlDataReader dr1;
        dr1 = cmd1.ExecuteReader();

        GridView1.DataSource = dr1;
        GridView1.DataBind();
        con1.Close();

    }
}
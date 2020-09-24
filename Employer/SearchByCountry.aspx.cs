using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Employer_SearchByCountry : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            BindCountry();
        }
    }

    public void BindCountry()
    {

        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());

        String str = "";
        str = "Select * from Country";

        SqlCommand cmd = new SqlCommand(str, con);

        con.Open();

        SqlDataReader dr;
        dr = cmd.ExecuteReader();

        drpcountry.DataSource = dr;
        drpcountry.DataTextField = "Country_name";
        drpcountry.DataValueField = "Country_id";
        drpcountry.DataBind();

        drpcountry.Items.Insert(0, "Select Country");
    }


    protected void btnsearch_Click(object sender, EventArgs e)
    {
        if (drpcountry.SelectedItem.Text == "Select Country")
        {
            //lblcountry.Text = "Please select your Country.";
            GridView1.Visible = false;
            return;
        }
        //lblcountry.Text = "";
        GridView1.Visible = true;
        SqlConnection con1 = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());

        string str1;
        str1 = "Select username,Degree,Email from Resume,Education,Jobseeker where Resume.Jobseeker_id = Jobseeker.Jobseeker_id and Resume.Education_id=Education.Education_id and  Country_id = " + drpcountry.SelectedItem.Value + " ";


        SqlCommand cmd1 = new SqlCommand(str1, con1);
        con1.Open();

        SqlDataReader dr1;
        dr1 = cmd1.ExecuteReader();

        GridView1.DataSource = dr1;
        GridView1.DataBind();
        con1.Close();
    }
}
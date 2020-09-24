using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class Employer_SearchByState : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            BindState();
        }
    }

    public void BindState()
    {

        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());

        String str = "";
        str = "Select * from State";

        SqlCommand cmd = new SqlCommand(str, con);

        con.Open();

        SqlDataReader dr;
        dr = cmd.ExecuteReader();

        drpstate.DataSource = dr;
        drpstate.DataTextField = "State_name";
        drpstate.DataValueField = "State_id";
        drpstate.DataBind();

        drpstate.Items.Insert(0, "Select State");
    }

    protected void btnsearch_Click(object sender, EventArgs e)
    {
        if (drpstate.SelectedItem.Text == "Select State")
        {
            //lblcountry.Text = "Please select your Country.";
            GridView1.Visible = false;
            return;
        }
        //lblcountry.Text = "";
        GridView1.Visible = true;
        SqlConnection con1 = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());

        string str1;
        str1 = "Select username,Degree,Email from Resume,Education,Jobseeker where Resume.Jobseeker_id = Jobseeker.Jobseeker_id and Resume.Education_id=Education.Education_id and  State_id = " + drpstate.SelectedItem.Value + " ";


        SqlCommand cmd1 = new SqlCommand(str1, con1);
        con1.Open();

        SqlDataReader dr1;
        dr1 = cmd1.ExecuteReader();

        GridView1.DataSource = dr1;
        GridView1.DataBind();
        con1.Close();
     
    }
}
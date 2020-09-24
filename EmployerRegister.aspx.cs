using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class EmployerRegister : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.MaintainScrollPositionOnPostBack = true;
        if (Page.IsPostBack == false)
        {
            BindCountry();

        }

    }
    protected void drpcountry_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (drpcountry.SelectedItem.Text == "Select Country")
        {
            lblCountry.Text = "Please select your Country.";
            return;
        }
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());

        string str;
        str = "select * from State where Country_id=" + drpcountry.SelectedItem.Value + "   ";


        SqlCommand cmd = new SqlCommand(str, con);

        con.Open();

        SqlDataReader dr;
        dr = cmd.ExecuteReader();


        drpstate.DataSource = dr;
        drpstate.DataTextField = "State_name";
        drpstate.DataValueField = "State_id";
        drpstate.DataBind();

        drpstate.Items.Insert(0, "Select State");

        con.Close();
    }

    protected void drpstate_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (drpstate.SelectedItem.Text == "Select State")
        {
            lblState.Text = "Please select your State.";
            return;
        }
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());

        string str;
        str = "select * from City where State_id=" + drpstate.SelectedItem.Value + "   ";


        SqlCommand cmd = new SqlCommand(str, con);

        con.Open();

        SqlDataReader dr;
        dr = cmd.ExecuteReader();


        drpcity.DataSource = dr;
        drpcity.DataTextField = "City_name";
        drpcity.DataValueField = "City_id";
        drpcity.DataBind();

        drpcity.Items.Insert(0, "Select City");

        con.Close();

    }


    public void BindCountry()
    {

        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());

        String str = "";
        str = "Select * from Country ";

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


    public void BindState()
    {

        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());

        String str = "";
        str = "Select * from State ";

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
    public void BindCity()
    {

        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());

        String str = "";
        str = "Select * from City ";

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




    protected void drpcity_SelectedIndexChanged(object sender, EventArgs e)
    {



    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {

        if (drpcountry.SelectedItem.Text == "Select Country")
        {
            lblCountry.Text = "Please select Country.";
            return;
        }
        if (drpstate.SelectedItem.Text == "Select State")
        {
            lblState.Text = "Please select State.";
            return;
        }
        if (drpcity.SelectedItem.Text == "Select City")
        {
            lblCity.Text = "Please select City.";
            return;
        }



        Session["UserName"] = txtusername.Text;
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());

        string str;
        str = "insert into Employer(Username,Password,First_name,Last_name,Birthdate,Gender,Contact_no,Address,Email,Country_id,State_id,City_id,Nationality)values('" + txtusername.Text + "','" + txtpassword.Text + "','" + txtfname.Text + "','" + txtlname.Text + "','" + txtbirthdate.Text + "','" + RadioButtonList1.SelectedItem.Text + "'," + txtcontactnum.Text + ",'" + txtaddress.Text + "','" + txtmail.Text + "'," + drpcountry.SelectedItem.Value + "," + drpstate.SelectedItem.Value + "," + drpcity.SelectedItem.Value + ",'" + txtnationality.Text + "')";

        SqlCommand cmd = new SqlCommand(str, con);


        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

        SqlConnection con3 = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
        string str3;
        str3 = "select Employer_Id from Employer where Username='" + txtusername.Text + "'  ";
        SqlCommand cmd3 = new SqlCommand(str3, con3);

        con3.Open();
        int j;
        j = Convert.ToInt32(cmd3.ExecuteScalar());
        Session["EmployerId"] = j;
        con3.Close();

       
        SqlConnection con2 = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());

        string str2;
        str2 = "insert into Company(Employer_id,Company_name,Address,Contact_no,Email)values(" + Convert.ToInt32(Session["EmployerId"]) + ",'" + txtcompname.Text + "','" + txtcompaddress.Text + "'," + txtcompcontactnum.Text + ",'" + txtcompmail.Text + "')";

        SqlCommand cmd2 = new SqlCommand(str2, con2);


        con2.Open();
        cmd2.ExecuteNonQuery();
        con2.Close();

        Response.Redirect("~/Employer/HomePage.aspx");

    }

    protected void txtusername_TextChanged(object sender, EventArgs e)
    {
        SqlConnection con1 = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
        string str1;
        str1 = "select count(*)from Employer where Username='" + txtusername.Text + "'";
        SqlCommand cmd1 = new SqlCommand(str1, con1);
        con1.Open();
        int j;
        j = Convert.ToInt32(cmd1.ExecuteScalar());
        if (j == 1)
        {
            lblCheck.Text = "UserName already exists. Please select another UserName.";
            return;
        }
        else
        {
            //lblCheck.Text = "UserName is unique please to be continue.";
        }
    }
}
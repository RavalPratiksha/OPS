using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class JobSeekerRegister : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         Page.MaintainScrollPositionOnPostBack = true;
         if (Page.IsPostBack == false)
         {
             BindCountry();
             BindEducation();
             BindCategory();
         }
    }

    protected void txtusername_TextChanged(object sender, EventArgs e)
    {
        SqlConnection con1 = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
        string str1;
        str1 = "select count(*)from Jobseeker where Username='" + txtusername.Text + "'";
        SqlCommand cmd1 = new SqlCommand(str1, con1);
        con1.Open();
        int j;
        j = Convert.ToInt32(cmd1.ExecuteScalar());
        if (j == 1)
        {
            lblCheck.Text = "Username already exists. Please select another Username.";
            return;
        }
        else
        {
            // lblCheck.Text = "Your selected UserName is unique.";
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
        if (drpeducation.SelectedItem.Text == "Select Education")
        {
            lblEdu.Text = "Please select Degree.";
            return;
        }
        if (drpcategory.SelectedItem.Text == "Select Category")
        {
            lblCategory.Text = "Please select your Category.";
            return;
        }
        lblCountry.Text = "";
        lblState.Text = "";
        lblCity.Text = "";

        

        Session["UserName"] = txtusername.Text;
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());

        string str;
        str = "insert into Jobseeker(username,password,first_name,last_name,Birthdate,Gender,Contact_num,Address,Email,Country_id,State_id,City_id,Nationality)values('" + txtusername.Text + "','" + txtpassword.Text + "','" + txtfname.Text + "','" + txtlname.Text + "','" + txtbirthdate.Text + "','" + RadioButtonList1.SelectedItem.Text + "'," + txtcontactnum.Text + ",'" + txtaddress.Text + "','" + txtemail.Text + "'," + drpcountry.SelectedItem.Value + "," + drpstate.SelectedItem.Value + "," + drpcity.SelectedItem.Value + ",'" + txtnationality.Text + "')";

        SqlCommand cmd = new SqlCommand(str, con);


        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

        SqlConnection con2 = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
        string str2;
        str2 = "select Jobseeker_id from Jobseeker where username='" + txtusername.Text + "'  ";
        SqlCommand cmd2 = new SqlCommand(str2, con2);

        con2.Open();
        int j;
        j = Convert.ToInt32(cmd2.ExecuteScalar());
        Session["JobSeekerId"] = j;
        con2.Close();

        SqlConnection con1 = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());

        string str1;
        str1 = "insert into Resume(Jobseeker_id,Education_id,Category_id,Current_sal,Exp_sal,Experience)values( " + Convert.ToInt32(Session["JobSeekerId"]) + "," + Convert.ToInt32(drpeducation.SelectedItem.Value) + "," + Convert.ToInt32(drpcategory.SelectedItem.Value) + "," + Convert.ToDecimal(txtcurrentsal.Text) + "," + Convert.ToDecimal(txtexpectsal.Text) + "," + Convert.ToDecimal(txtexperience.Text) + ")";
        SqlCommand cmd1 = new SqlCommand(str1, con1);


        con1.Open();
        cmd1.ExecuteNonQuery();
        con1.Close();

        //----------------education detail
        //--------------fetch resume id-----------
        SqlConnection conrs = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
        string strrs;
        strrs = "select Resume_id from Resume where Jobseeker_id="+j+" ";
        SqlCommand cmdrs = new SqlCommand(strrs, conrs);

        conrs.Open();
        int r;
        r  = Convert.ToInt32(cmdrs.ExecuteScalar());
        Session["ResumeId"] = r ;
        conrs.Close();
        //---------------over resume id----
        string stredu;
        stredu = "insert into Education(Degree)values( " + Convert.ToInt32(drpeducation.SelectedItem.Value) + ")";
        SqlCommand cmdedu = new SqlCommand(stredu, con2);


        con2.Open();
        cmdedu.ExecuteNonQuery();
        con2.Close();

        //----------end education detail

        Response.Redirect("~/JobSeeker/HomePage.aspx");
    }
    protected void  btnclear_Click(object sender, EventArgs e)
{
        txtusername.Text = "";
        txtpassword.Text = "";
        txtnationality.Text = "";
        
        txtemail.Text = "";
        
        txtlname.Text = "";
        txtfname.Text = "";
        txtcontactnum.Text = "";
        txtconformpw.Text = "";
        txtbirthdate.Text = "";
        txtaddress.Text = "";
        drpstate.ClearSelection();
        drpcountry.ClearSelection();
        drpcity.ClearSelection();
        drpcategory.ClearSelection();
        drpeducation.ClearSelection();
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
    public void BindEducation()
    {

        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());

        String str = "";
        str = "Select * from Education";

        SqlCommand cmd = new SqlCommand(str, con);

        con.Open();

        SqlDataReader dr;
        dr = cmd.ExecuteReader();

        drpeducation.DataSource = dr;
        drpeducation.DataTextField = "Degree";
        drpeducation.DataValueField = "Education_id";
        drpeducation.DataBind();

        drpeducation.Items.Insert(0, "Select Degree");
    }


    public void BindCategory()
    {

        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());

        String str = "";
        str = "Select * from Category ";

        SqlCommand cmd = new SqlCommand(str, con);

        con.Open();

        SqlDataReader dr;
        dr = cmd.ExecuteReader();

        drpcategory.DataSource = dr;
        drpcategory.DataTextField = "Category_name";
        drpcategory.DataValueField = "Category_id";
        drpcategory.DataBind();

        drpcategory.Items.Insert(0, "Select Category");
    }









}




    

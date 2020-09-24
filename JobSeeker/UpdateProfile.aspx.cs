using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Xml.Linq;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class UpdateProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.MaintainScrollPositionOnPostBack = true;
        if (Page.IsPostBack == false)
        {
            BindCountry();
           
            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());

            string str;
            str = "select * from Jobseeker where username='" + Session["UserName"].ToString() + "' ";

            SqlCommand cmd = new SqlCommand(str, con);
            con.Open();

            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                txtpassword.Text = dr["password"].ToString();
                txtfname.Text = dr["First_name"].ToString();
                txtlname.Text = dr["Last_name"].ToString();
                txtbirthdate.Text = dr["Birthdate"].ToString();
                txtcontactnum.Text = dr["Contact_num"].ToString();
                txtaddress.Text = dr["Address"].ToString();
                txtemail.Text = dr["Email"].ToString();
                txtnationality.Text = dr["Nationality"].ToString();
            }
            con.Close();
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
    protected void btnupdate_Click(object sender, EventArgs e)
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

        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
        string str;
        str = "update Jobseeker set password='" + txtpassword.Text + "',First_name='" + txtfname.Text + "',Last_name='" + txtlname.Text + "',Birthdate='" + txtbirthdate.Text + "',Contact_num=" + txtcontactnum.Text + ",Gender='" + RadioButtonList1.SelectedItem.Text + "',Address='" + txtaddress.Text + "',Email='" + txtemail.Text + "',Country_id=" + drpcountry.SelectedItem.Value + ",State_id=" + drpstate.SelectedItem.Value + ",City_id=" + drpcity.SelectedItem.Value + ",Nationality='" + txtnationality.Text + "' where username='" + Session["UserName"].ToString() + "' ";
        SqlCommand cmd = new SqlCommand(str, con);

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

        lblMsg.Text = "Profile updated successfully.";
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

}
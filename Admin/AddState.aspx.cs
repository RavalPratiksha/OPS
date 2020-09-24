using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;



public partial class Admin_AddState : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\OPS.mdf;Integrated Security=True;User Instance=True");

            string str;
            str = "select * from Country";

            SqlCommand cmd = new SqlCommand(str, con);

            con.Open();

            SqlDataReader dr;
            dr = cmd.ExecuteReader();

            drpCountry.DataSource = dr;
            drpCountry.DataTextField = "Country_name";
            drpCountry.DataValueField = "Country_id";
            drpCountry.DataBind();


        }
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\OPS.mdf;Integrated Security=True;User Instance=True");


        string str;
        str = "insert into State(Country_id,State_name)values(" + drpCountry.SelectedItem.Value + ",'" + txtState.Text + "')   ";

        SqlCommand cmd = new SqlCommand(str, con);

        con.Open();

        cmd.ExecuteNonQuery();

        lblmessage.Text = "Product inserted succ.";


        GridView1.DataBind();

    }
    protected void drpCountry_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
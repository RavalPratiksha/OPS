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
            str = "select * from State";

            SqlCommand cmd = new SqlCommand(str, con);

            con.Open();

            SqlDataReader dr;
            dr = cmd.ExecuteReader();

            drpState.DataSource = dr;
            drpState.DataTextField = "State_name";
            drpState.DataValueField = "State_id";
            drpState.DataBind();


        }
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\OPS.mdf;Integrated Security=True;User Instance=True");


        string str;
        str = "insert into City(State_id,City_name)values(" + drpState.SelectedItem.Value + ",'" + txtCity.Text + "')   ";

        SqlCommand cmd = new SqlCommand(str, con);

        con.Open();

        cmd.ExecuteNonQuery();

        lblmessage.Text = "Product inserted succ.";


        GridView1.DataBind();

    }

    protected void drpState_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}
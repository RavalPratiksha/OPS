using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Jobseeker_UpdateResume : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.MaintainScrollPositionOnPostBack = true;
        if (Page.IsPostBack == false)
        {
            BindEducation();
            BindCategory();

            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());

            string str;
            str = "select * from Resume where JobSeeker_id='" + Convert.ToInt32(Session["JobSeekerId"]) + "' ";

            SqlCommand cmd = new SqlCommand(str, con);
            con.Open();

            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {

                txtcurrentsal.Text = dr["Current_Sal"].ToString();
                txtexpectsal.Text = dr["Exp_sal"].ToString();
                txtexperience.Text = dr["Experience"].ToString();
            }
            con.Close();

        }
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

    public void BindEducation()
    {

        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());

        String str = "";
        str = "Select * from Education";

        SqlCommand cmd = new SqlCommand(str, con);

        con.Open();

        SqlDataReader dr;
        dr = cmd.ExecuteReader();

        drpdegree.DataSource = dr;
        drpdegree.DataTextField = "Degree";
        drpdegree.DataValueField = "Education_id";
        drpdegree.DataBind();

        drpdegree.Items.Insert(0, "Select Degree");
    }

    protected void btnupdate_Click(object sender, EventArgs e)
    {
         if (drpdegree.SelectedItem.Text == "Select Degree")
        {
            lblEdu.Text = "Please select Degree.";
            return;
        }
        if (drpcategory.SelectedItem.Text == "Select Category")
        {
            lblCategory.Text = "Please select your Category.";
            return;
        }
       

        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
        string str;
        str = "update Resume set Current_sal=" + txtcurrentsal.Text + ",Exp_sal=" + txtexpectsal.Text + ",Experience=" + txtexperience.Text + ",Education_id=" + drpdegree.SelectedItem.Value + " where JobSeeker_id='" + Convert.ToInt32(Session["JobSeekerId"]) + "' ";
        SqlCommand cmd = new SqlCommand(str, con);

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

        lblMsg.Text = "Resume updated successfully.";
    }

 }
